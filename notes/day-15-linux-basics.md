# 📁 Linux File Structure & Basic Commands
Linux uses a single-rooted directory structure, meaning everything starts from / (root).
Below are the most important directories and what they contain.

/ – Root Directory

The top of the file system. All other directories branch from here.

/bin – Essential User Commands

Contains basic commands like ls, cp, mv, cat.
These are needed even when no other file systems are mounted.

/sbin – System Administration Commands

Commands for system management (mainly for admins), e.g. shutdown, mount, ifconfig.

/etc – Configuration Files

System-wide config files:

/etc/passwd – user accounts

/etc/hosts – local hostname resolution

/home – User Home Directories

Every user gets a folder here, e.g. /home/amos.

/root – Root User Home

The superuser's personal directory.

/usr – User Installed Software

Applications, libraries, and documentation.
Inside:

/usr/bin – most user commands

/usr/lib – libraries

/usr/share – shared data

/var – Variable Files

Data that changes often: logs, mail, cache.

/var/log – system logs

/tmp – Temporary Files

Stores temporary files. Often cleared automatically.

/dev – Device Files

Hardware is treated as files (e.g. /dev/sda for storage).

/proc – Process & Kernel Info

Virtual directory showing system + process information
(e.g. /proc/cpuinfo, /proc/meminfo).

/mnt & /media – Mount Points

Used for mounting external drives or partitions.

### 🧾 Basic Linux Commands
pwd	Show current directory
ls	List files/folders
ls -l	Long listing (permissions, owner, size)
ls -a	Show hidden files
cd /path	Change directory
cd ..	Go up one level
cd ~	Go to home
cd - Go to Previous Dir

### 📁 Working with Files & Directories
Command	Description
touch file.txt	Create empty file
mkdir folder	Create directory
cp file1 file2	Copy file
cp -r dir1 dir2	Copy directory
mv old new	Rename or move
rm file	Delete file
rm -r folder	Delete directory
cat file	View file content
nano file	Edit file in terminal

### 🔐 Permissions
Command	Description
chmod 755 file	Change permissions
chown user:group file	Change owner
sudo command	Run command as superuser
📦 Package Management (Debian/Ubuntu)

### Command	Description
sudo apt update	Refresh package list
sudo apt upgrade	Upgrade installed packages
sudo apt install packagename	Install software
sudo apt remove packagename	Remove software

### ⚙️ System Information
Command	Description
uname -a	System info
top	View running processes
htop	Improved process viewer (if installed)
df -h	Disk usage
du -sh folder	Folder size
free -h	Memory usage

### 🌐 Networking
Command	Description
ip a	Show network interfaces
ping google.com	Test connectivity
curl url	Transfer data from URL
wget url	Download file
📝 Final Notes

Linux is powerful because everything is a file, and the file system is organized logically.
