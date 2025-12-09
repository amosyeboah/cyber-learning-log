# Windows Administration
Windows administration is the process of managing and maintaining computer systems that run on Microsoft Windows operating systems, particularly in a network or enterprise environment.

1. User Management
2. Active Directory
3. Security: Firewalls configuration and windows defender
4. Networking: TCP/IP, DNS, DHCP
5. System Management: Event viewer, task manager, Device Manager

### User Management
User managent is about creating, modifying and delete users account, and security groups.

This includes setting permissions and implementing Group Policies to define user environments 
and security settings across the domain (often using Active Directory).

Create user:
net user username password /add

Add user to group:
net localgroup Administrators username /add

Disable user:
net user username /active:no

Windows has two main types of local user accounts:

✔ Standard User,

Limited privileges.
Cannot install system-wide software or change system settings.

✔ Administrator
Can install apps, modify settings, manage other users, and access every folder.

net user Amos MyPassword123 /add

Add user to admin group; 
net localgroup administrators Amos /add

Change a user password
net user Amos NewPass123

### Active Directory (AD)
An Active Dir is the logical structures of users and systems on a windows env't.
AD is the primary tool to manage users, groups and permissions.

| Term                         | Meaning                                             |
| ---------------------------- | --------------------------------------------------- |
| **Domain Controller (DC)**   | The server that runs Active Directory               |
| **Domain**                   | Your organization network (example: amoztech.local) |
| **OU (Organizational Unit)** | Creates structure for users, computers, etc.        |
| **Group Policy (GPO)**       | Controls user/computer settings across the domain   |
| **Groups**                   | Used to assign permissions to many users at once    |


### Security

| Tool                           | Purpose                                      |
| ------------------------------ | -------------------------------------------- |
| **Windows Defender Firewall**  | Filters inbound/outbound traffic             |
| **Windows Defender Antivirus** | Malware protection                           |
| **Local Security Policy**      | Password rules, lockout policy, audit policy |
| **UAC (User Account Control)** | Prevents unauthorized changes                |


Practical Security Configurations
Password Policy

Set:

Minimum length, 
Maximum password age, 
Account Lockout Policy, 
Threshold (e.g., 5 failed attempts), 
Lockout duration,

Enable Firewall Rules:

You can block or allow:
Ports
Applications,
Specific IP ranges,

### Network
| Component            | Description                            |
| -------------------- | -------------------------------------- |
| **IP Configuration** | Assigning IP, Gateway, DNS             |
| **DNS Client**       | Name resolution                        |
| **DHCP**             | Automatic IP assignment                |
| **Network Profiles** | Public/Private controls firewall rules |

### System Management
| Area                       | Description                      |
| -------------------------- | -------------------------------- |
| **Storage Management**     | Partitions, disks, volumes       |
| **Performance Monitoring** | RAM, CPU, Disk activity          |
| **Task Scheduler**         | Automate backups, scans, scripts |
| **Services Management**    | Starting and managing services   |
| **Event Viewer**           | Logs for security, system, apps  |


# Part 2
### Event Viewer

The Event Viewer (eventvwr.msc) is the central component of the Windows operating system that allows administrators to view, analyze, and manage log data about significant system events. It's the system's historical record of everything that has happened.

Purpose
It's primarily a troubleshooting and auditing tool. By examining the logs, administrators can diagnose system errors, hardware issues, application crashes, and security threats (like failed login attempts).

### Services
The Services Console (services.msc) is the management tool for Windows Services. Services are programs that run in the background without a user interface, providing core operating system functions, such as printing, networking, and automatic updates. They are the active components that make the system work.

Purpose; 
It's a configuration and control tool. Administrators use it to manage the operational state and configuration of these background programs.

Event Viewer and Services often work together during troubleshooting:
When a service successfully starts, stops, or fails, it records that action as an event in the Event Viewer (usually in the System Log).

Example: If your print service stops working, you would use the Services Console to try and Restart the "Print Spooler" service. If the service fails to start, you would then check the Event Viewer (System Log) to read the specific Error message and Event ID detailing why it failed (e.g., a driver conflict, a corrupted file, etc.).

### RDP
Remote Desktop Protocol (RDP) is a proprietary protocol developed by Microsoft that allows a user to establish a graphical interface connection to another computer over a network connection. It is the core tool administrators use to manage servers remotely and is widely used for end-user remote work.



