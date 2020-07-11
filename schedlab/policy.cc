#include <algorithm>

#include "policy.h"

using std::vector;

vector<Event::Task> cpu, io; // cpu io tasks to be scheduled

bool operator < (const Event::Task & left, const Event::Task & right) { //ddl late firat
    return left.deadline < right.deadline;
}

bool operator == (const Event::Task & left, const Event::Task & right) {
    return (left.arrivalTime == right.arrivalTime) &&
        (left.deadline == right.deadline) &&
        (left.priority == right.priority) &&
        (left.taskId == right.taskId);
}

Action policy(const std::vector <Event> & events, int current_cpu, int current_io) {
    for (int i = 0; i < events.size(); i++) {

        vector<Event::Task>::iterator it;
        Event::Type type = events[i].type;
        const Event::Task task = events[i].task;

        if(type == Event::Type::kTimer){// ignore
            continue;
        }
        if(type == Event::Type::kTaskArrival){// in cpu
            cpu.push_back(task);
            continue;
        }
        if(type == Event::Type::kIoRequest){// out cpu; in io
            it = find(cpu.begin(), cpu.end(), task);
            io.push_back(*it);
            cpu.erase(it);
            continue;
        }
        if(type == Event::Type::kIoEnd){// out io
            it = find(io.begin(), io.end(), task);
            cpu.push_back(*it);
            io.erase(it);
            continue;    
        }
        if(type == Event::Type::kTaskFinish){// out cpu
            it = find(cpu.begin(), cpu.end(), task);
            cpu.erase(it);
            continue;
        }
    }

    std::sort(cpu.begin(), cpu.end()); // sort by ddl; late ddl first
    std::sort(io.begin(), io.end());

    Action action;
    int time = events.front().time;// now time

    int vc; // pos of the cpu task that is most likely to timeout
    for (vc = 0; vc < cpu.size(); vc++) {
        if (cpu[vc].deadline > time) {
            break;
        }
    }

    int vi; // pos of the io task that is most likely to timeout
    for (vi = 0; vi < io.size(); vi++) {
        if (io[vi].deadline > time) {
            break;
        }
    }

    if (cpu.size() == 0)  // has no cpu task
        action.cpuTask = 0;    
    else if (vc == cpu.size())  // has cpu tasks & no cpu task to timeout
        action.cpuTask = cpu.front().taskId;
    else  // choose the earliest deadline
        action.cpuTask = cpu[vc].taskId;
        
    

    if (current_io != 0 || io.size() == 0)  // io is running or has no io task
        action.ioTask = 0;     
    else if (vi == io.size())  // no io running & has io tasks & no io task to timeout
        action.ioTask = io.front().taskId;
    else  // choose the earliest deadline
        action.ioTask = io[vi].taskId;

    return action;
}
