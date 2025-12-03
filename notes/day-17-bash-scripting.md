# 🐚 Bash Scripting — Notes & Practical Exercise
📌 What Is Bash?

Bash (Bourne Again SHell) is a command-line interpreter used in Linux to run commands, automate tasks, and write scripts.

Every Bash script begins with:

#!/bin/bash

This is called the shebang — it tells the system to run the file using Bash.

Basic Script Example
#!/bin/bash
echo "Hello, World!"

Steps to run it:
chmod +x script.sh
./script.sh

📌 Variables
name="Amos"
echo "Hello $name"

📌 Taking User Input
echo "Enter your name:"
read username
echo "Welcome $username"


📌 Functions
greet() {
    echo "Hello from a function!"
}

greet

📌 Handling Arguments
#!/bin/bash
echo "First argument: $1"
echo "Second argument: $2"


## 📦 PROJECT: Backup a Folder Using Bash
📝 Script: backup.sh
-----------------------------------------------------------
#!/bin/bash

src="/home/user/Documents"

dest="/home/user/backup-$(date +%Y-%m-%d)"

mkdir -p $dest

cp -r $src/* $dest

echo "Backup completed!"
-----------------------------------------------------------
📌 How to Use the Script

Save the script

nano backup.sh


Make it executable

chmod +x backup.sh


Run it

./backup.sh


What to Learn Next
1. A compressed backup file

eg; backup_2025-12-01_10-25-44.tar.gz

2. Schedule automatic backups (Cron Job)

Run:

crontab -e

Add a rule to run the backup every day at 12 AM:

0 0 * * * /home/amos/backup.sh

3. A version that uploads backups to Google Drive / S3 / FTP

### 🎯 What I Learned

Bash script structure

Variables, functions

Running scripts

Creating a real backup automation system
