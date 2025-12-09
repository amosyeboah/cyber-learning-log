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




