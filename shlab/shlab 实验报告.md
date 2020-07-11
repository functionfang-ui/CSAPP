# 计算机系统基础$shlab$实验报告



###### 班级：<u>信息学院1班</u> 	姓名：<u>方晓坤</u> 	学号：<u>2018202046</u> 	完成日期：<u>2020.5.11</u>



## 一、需求分析

- 在学习了有关进程的部分内容后之后，为了进一步了解多进程的概念和运作方式，以及信号的作用和使用方式，我们完成了$shlab$实验。

- 在本实验中，我们需要完成一个简易的$shell$。为了实现相应的功能：
  - 正确处理输入的命令
  - 多进程，程序前后台运行
  - 正确处理信号
  
  我们需要补充以下几个函数：
  
  - `eval`，解析命令行，`fork`新进程
  - `bulidin_cmd`，解析命令行，区分`fg`，`bg`和`jobs`
  - `do_fgbg`，将指定的`job`调动至前后台运行
  - `waitfg`，当有前台任务请求时，等待前台作业完成
  - `sigchld_handler, sigint_handler, sigstp_handler`，信号处理函数

## 二、遇到问题和详细设计

### 1、遇到的问题

本次实验有较多细节，我遇到不少困难：

- 用`sigprocmask`去`block`信号，没有及时地`unblock`，`shell`处于一个无法响应的状态
- 在`deletejob`时，打印提示信息，出现`Job [0] (0) deleted.`这样一条不应该出现的信息
- 在对`jobs`这样一个全局变量做操作时，忘记屏蔽信号
- 最开始在`addjob`前忘记屏蔽，出现了`job`无法被删除的情况
- `job`被挂起时，也发出了`sigchld`，一度处理错误

### 2、详细设计

#### eval函数

```c
void eval(char *cmdline) 
{
    char *argv[MAXARGS];
    char buf[MAXLINE];
    int bg;
    pid_t pid;

    sigset_t mask_all, mask_one, prev_one;
    sigemptyset(&mask_one);
    sigaddset(&mask_one, SIGCHLD);
    sigfillset(&mask_all);

    strcpy(buf, cmdline);
    bg = parseline(buf, argv);
    if (argv[0] == NULL)
        return;
    if (!builtin_cmd(argv)){
        sigprocmask(SIG_BLOCK, &mask_one, &prev_one);   // block SIGCHLD
        if((pid=fork())==0){
            sigprocmask(SIG_SETMASK, &prev_one, NULL);  // unblock SIGCHLD
            setpgid(0, 0);  // only tsh 
            if(execve(argv[0], argv, environ) < 0){
                printf("%s:Command not found\n", argv[0]);
                exit(0);
            }
        }

        sigprocmask(SIG_BLOCK, &mask_all, NULL);    // block all

        if (bg == 0){
            addjob(jobs, pid, FG, cmdline);
            sigprocmask(SIG_SETMASK, &prev_one, NULL);  // unblock all to avoid infinity pause
            waitfg(pid);
        }
        else{
            addjob(jobs, pid, BG, cmdline);
            struct job_t* bgjob = getjobpid(jobs, pid);
            sigprocmask(SIG_SETMASK, &prev_one, NULL);
            printf("[%d] (%d) %s", bgjob->jid, bgjob->pid, bgjob->cmdline);
        }
    }
    return;
}
```

这里遇到了上面提到的两个问题。

开始是忘记在`addjob`前忘记加上屏蔽所有信号，发现应该是在`addjob`前就接收到`sigchld`而将这个`job`回收。后面这个`job`就不再运行发出`sigchld`，这导致它在`jobs`里无法被删除掉。

后来我加上了`sigprocmask(SIG_BLOCK, &mask_all, NULL)`，但是忘记及时`unblock`，导致`sigchld`不能被`waitfg`接收。后台程序一直`pause`在原地等待前台任务完成，然而前台已经完成，`shell`处于无法响应的状态。

#### builtin_cmd函数

这个函数理论上最先实现，因为就是它根据`argv`的内容决定`shell`的任务。具体做法就是将`argv[0]`和`quit`，`fg`,`bg`,`jobs`分别做比较，分配工作

```c
int builtin_cmd(char **argv) 
{
    sigset_t mask_all, prev_one;
    sigfillset(&mask_all);

    if (!strcmp(argv[0], "quit"))
        exit(0);
    else{
        if (strcmp(argv[0], "fg") == 0 || strcmp(argv[0], "bg") == 0){
            do_bgfg(argv);
            return 1;
        }
        if (!strcmp(argv[0], "jobs")){
            sigprocmask(SIG_BLOCK, &mask_all, &prev_one);
            listjobs(jobs);
            sigprocmask(SIG_SETMASK, &prev_one, NULL);
            return 1;
        }
    }
    
    return 0;     /* not a builtin command */
}
```

值得一提的是，在对全局变量`jobs`做操作时，应该对信号做好屏蔽，防止`jobs`被并发的信号修改（比如`sigchld`)。可问题是，我在查找资料时，发现极少有前人如此做，不禁让我怀疑此举的必要性。但在与同学讨论后，我们就信号屏蔽达成了一致。

#### do_bgfg函数

这个函数只要根据`jid`或`pid`找到对应的`job`，然后根据`job`的`state`分情况处理。

如果`state==ST`，需要给该进程组发`SIGCONT`。同时如果是`fg`，需要`waitfg`。

```c
void do_bgfg(char **argv) 
{
    struct job_t* job;
    sigset_t mask_all, prev_one;
    sigfillset(&mask_all);

    int jid, flag;
    pid_t pid;
    flag = 0;

    if((!argv[1]) || (argv[1][0] == '&')){
        printf("%s command requires PID or %%jobid argument\n",argv[0]);
        return;
    }

    if(argv[1][0] == '%'){  // get jid
        jid = atoi(++argv[1]);
        flag = 1;
        if(jid == 0){
            printf("%s: argument must be a PID or %%jobid\n",argv[0]);
            fflush(stdout);
            return;
        }
        sigprocmask(SIG_BLOCK, &mask_all, &prev_one);
        job = getjobjid(jobs, jid);
        sigprocmask(SIG_SETMASK, &prev_one, NULL);
    }
    else{   // get pid
        pid = atoi(argv[1]);
        if(pid == 0){
            printf("%s: argument must be a PID or %%jobid\n",argv[0]);
            fflush(stdout);
            return;
        }
        sigprocmask(SIG_BLOCK, &mask_all, &prev_one);
        job = getjobpid(jobs, pid);
        sigprocmask(SIG_SETMASK, &prev_one, NULL);
    }

    if(job == NULL){
        if(flag == 0)
            printf("(%s): NO such process\n", argv[1]);
        else
            printf("%%%s: No such job\n", argv[1]);
        fflush(stdout);
        return;
    }

    if(!strcmp(argv[0], "bg")){
        switch (job->state){
            case ST:
                job->state = BG;
                kill(-(job->pid), SIGCONT);
                printf("[%d] (%d) %s", job->jid, job->pid, job->cmdline);
                break;

            case BG:
                break;
        
            default:
                unix_error("bg The state of a process is under or FG");
                break;
        }
    }
    else{
        switch(job->state){
            case ST:
                job->state = FG;
                kill(-(job->pid), SIGCONT);
                waitfg(job->pid);
                break;

            case BG:
                job->state = FG;
                waitfg(job->pid);
                break;

            default:
                unix_error("fg The state of a process is under or FG");
                break;
        }
    }

    return;
}
```

#### waitfg函数

我是这样写的

```c
void waitfg(pid_t pid)
{
    struct job_t *job;
    job = getjobpid(jobs, pid);
    while (1){
        pause();    // wait foreground
        if(((job->pid == 0) && (job->state == UNDEF)) || ((job->pid == pid) && (job->state == ST))){
            if(verbose)
                printf("Process (%d) no longer the fg process\n", pid);
            break;
        }
    }
    
    return;
}
```

但是依然担心`SIGCHLD`会在`pause`之前来，导致程序在此处卡死，实测没有出现类似情况。`tutorial`推荐使用`sleep`，估计这里有一定可改进空间。

#### sigchld_handler函数

这个函数主要用来打印一些提示信息。

最开始没有意识到程序被挂起也会发送`SIGCHLD`，这导致`ctrl+z`进入该函数的`jobs`都被莫名其妙地清除掉了。后来用`WIFSTOPPED`特判出了`SIGSTOP`的情况，解决了这一问题。

奇怪的是，我使用`job_t* job`指向这个要被删掉的任务，但在`deletejob`后，`job`指针所指向的位置`pid`和`pid`都被修改成了`0`。后面发现是`clearjob`的问题，只好开了两个临时变量记一下，防止出现奇怪的提示信息输出。

```c
void sigchld_handler(int sig) 
{
    if(verbose)
        printf("Enter sigchld_hander.\n");
        
    int olderrno = errno;
    sigset_t mask_all, prev_one;
    sigfillset(&mask_all);

    pid_t pid;
    struct job_t* job;
    int status, jid;

    while ((pid = waitpid(-1, &status, WNOHANG|WUNTRACED)) > 0){
        sigprocmask(SIG_BLOCK, &mask_all, &prev_one);
        job = getjobpid(jobs, pid);
        jid = job->jid;     // avoid situation of deleting Job [0] (0)

        if(!job)
            app_error("Can't find the job");
        
        if(WIFSTOPPED(status)){// ctrl-z
            job->state = ST;
            printf("Job [%d] (%d) stopped by signal %d\n", jid, pid, WSTOPSIG(status));
        }
        else{
            if(WIFEXITED(status)){// terminate naturally
                if(verbose)
                    printf("Job [%d] (%d) terminates successfully (status %d)\n", jid, pid, WEXITSTATUS(status));
            }
            if(WIFSIGNALED(status)){// ctrl-c
                printf("Job [%d] (%d) stopped by signal %d\n", jid, pid, WTERMSIG(status));
            }

            if(deletejob(jobs, pid)){// delete job which is stopped by ctrl-c or teminates naturally
                if(verbose)
                    printf("Job [%d] (%d) deleted\n", jid, pid);
            }
            else
                app_error("Cant't delete job");   
        }
        fflush(stdout);
        sigprocmask(SIG_SETMASK, &prev_one, NULL);
    }
    if(pid < 0 && errno != ECHILD)
        unix_error("waitpid_error");

    errno = olderrno;
    if(verbose)
        printf("Exit sigchld_handler.\n");

    return;
}
```

#### sigint_handler和sigstp_handler

这两个函数结构和功能相似，核心都是`kill(-pid, SIGNAL)`向整个进程组发送信号

```c
void sigint_handler(int sig) 
{
    if(verbose)
        printf("\nEnter sigint_hander.\n");
        
    int olderrno = errno;
    sigset_t mask_all, prev_one;
    sigfillset(&mask_all);

    pid_t pid;

    sigprocmask(SIG_BLOCK, &mask_all, &prev_one);
    pid = fgpid(jobs);
    sigprocmask(SIG_SETMASK, &prev_one, NULL);
    if(pid){
        kill(-pid, SIGINT);
        if(verbose)
            printf("Job(%d) killed.\n", pid);
    }
    errno = olderrno;
    if(verbose)
        printf("Exit sigint_handler.\n");

    return;
}

void sigtstp_handler(int sig) 
{
    if(verbose)
        printf("\nEnter sigstp_hander.\n");

    int olderrno = errno;
    sigset_t mask_all, prev_one;
    sigfillset(&mask_all);

    pid_t pid;

    sigprocmask(SIG_BLOCK, &mask_all, &prev_one);
    pid = fgpid(jobs);
    sigprocmask(SIG_SETMASK, &prev_one, NULL);
    if(pid){
        kill(-pid, SIGTSTP);
        if(verbose)
            printf("Job(%d) stopped.\n", pid);
    }
    errno = olderrno;
    if(verbose)
        printf("Exit sigstp_handler.\n");

    return;
}
```



