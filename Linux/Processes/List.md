# How To View Running Processes in Linux.

```{r, engine='bash', count_lines}
$ top
```
This output shows all of the processes associated with the current user and terminal session
```{r, engine='bash', count_lines}
$ ps
```

Complete picture of the processes on this system
```{r, engine='bash', count_lines}
ps aux
```
To see a tree view, where hierarchal relationships are illustrated
```{r, engine='bash', count_lines}
$ ps axjf
```
A quick way of getting the PID of a process is with the pgrep command
```{r, engine='bash', count_lines}
$ pgrep bash
$ pgrep firefox
```
A process's parent is the process that was responsible for spawning it. If a process's parent is killed, then the child processes also die. The parent process's PID is referred to as the PPID.