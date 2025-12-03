# Linux Processes & Management Commands

Understanding how to view, monitor, and control processes in Linux.

🔥 What Is a Process?

A process is any running program or command in Linux.
Examples:

Your terminal

A web server

A background service

Each process is assigned a PID (Process ID) — a unique number used to monitor or control it.

## 1. ps — Process Status

ps shows running processes in the current shell/session.

Common Commands
Command	Meaning
ps	Show processes in the current terminal

ps -e	Show all processes

ps -ef	Full-format list of all processes

ps aux	Detailed, widely-used process listing

Example Output (ps aux)
USER       PID  %CPU %MEM   COMMAND

root         1   0.0  0.1   systemd

amos      2311   2.5  1.3   firefox

amos      2455   0.2  0.6   code

## 2. top — Real-Time System Monitor

top gives a live dashboard of running processes and system performance.

What You See in top:

CPU usage

Memory usage

Running processes

Process IDs

%CPU and %MEM columns sorted live

Useful shortcuts (inside top)
Key	Action
q	Quit

k	Kill a process

P	Sort by CPU usage

M	Sort by memory usage

## 3. htop — Improved Process Viewer

htop is like top but more user-friendly and colorful.

Why it’s better:

Scrollable list

Visual bars for CPU & memory

Easy to filter/search

Press F9 to kill a process

Press F6 to sort by different columns

Launch it:
htop


Note: If not installed

sudo apt install htop

## 4. kill — Terminate a Process

kill ends a running process using its PID.

### Step 1 — Find the PID

Use ps or top:

ps aux | grep firefox

### Step 2 — Kill the process
kill PID	Graceful stop

kill -9 PID	Force kill (use only when necessary)

Example; 
kill 2311

If it refuses to stop:

kill -9 2311

## Summary Table
Command	Use Case
ps:	Snapshot of running processes

ps aux:	Detailed list of all system processes

top:	Real-time performance monitor

htop:	User-friendly real-time process viewer

kill:	Stop a process using its PID

kill -9:	Force-stop a stubborn process


Use htop to filter for processes

Run htop

Press / and type the process name
