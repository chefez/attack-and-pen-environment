# ATTACKING WINDOWS?  
  
  
  
# ATTACKING LINUX?  
 

  
# DEFENDING?
```
who
ps aux | grep pts - to see who else is on the system
```
Patch by changing ssh keys, change passwords, look for the processes running or check cronjobs

Persistence so if you get kicked, you can get back in

# HARDENING LINUX?
```
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo dpkg --configure -a
sudo apt purge
sudo apt clean
sudo apt autoremove
```
**EDIT SUDOERS**
```
nano /etc/sudoers
remove the star (*) from www-data or other user at the end and place a note "-HelloThere"
```

restart services?
```
sudo systemctl restart apache2
```

enable firewall?
```
sudo ufw enable
sudo ufw status
sudo ofw logging on
```
**Inspecting Crontabs**
```
cd /var/spool/crontabs
find .
root crontab? inspect
```

adding user?
```
sudo usermod -aG sudo user1
```

install backdoor / ssh persistance?
```
sudo apt-get install openssh-server
service ssh status
```
now check to see if ssh is available / visible externally...
```
sudo ufw app list
```
enable us to ssh into server...
```
sudo ufw disable
sudo ufw allow 22
sudo ufw enable
```

### edit sshd config file
```
sudo nano /etc/ssh/sshd_config
*scroll to bottom and type...*
AllowUsers username@IP
sudo service ssh restart
```
**Gen SSH Backdoor**
```
ssh-keygen
mv id_rsa.pub authorized_keys
place key on target machine
chmod 600 id_rsa
ssh -i id_rsa user@IP
```

**CHECK USERS RUNNING AND KILL THEIR TASK**
```
ps -aef --forest
kill PID
```


**KILL PYTHON PTY**
```
find / | grep pty.py
rm /usr/lib/python2.7\pty.py
```

**BREAK OPPONENTS TERMINAL?**
```
w - to see open processes (do not break your terminal)
cat /dev/urandom > /dev/pts/0
```
# TROLLLLOLOLOL
broadcast to all users on linux machine
```
wall "Hello There"
```
break terminal
```
cat /dev/urandom > /dev/pts/0
```


# HARDENING WINDOWS?
go to C drive and check who has permissions
```
net share
```

right select c drive, properties, sharing --> should be 'not shared'
go to c drive in file explorer, right select 'windows', sharing, advanced sharing, permissions, uncheck permissions, then deselect share this folder

task manager to delete tasks

programs and features in control panel - delete programs if need be

policies - password, lockout, etc...

**see who is logged in?**
```
qwinsta
```

**KILL TASK?**
```
netstat -anob
taskkill /f /pid pid_number
```
