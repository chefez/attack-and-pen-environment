## ATTACKING WINDOWS?  
  
  
  
## ATTACKING LINUX?  
 

  
## DEFENDING?
```
who
ps aux | grep pts - to see who else is on the system
```
Patch by changing ssh keys, change passwords, look for the processes running or check cronjobs

Persistence so if you get kicked, you can get back in

## HARDENING LINUX?
```
sudo apt-get update
sudo apt-get upgrade
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

### edit  sshd config file
```
sudo nano /etc/ssh/sshd_config
*scroll to bottom and type...*
AllowUsers username@IP
sudo service ssh restart
```

## HARDENING WINDOWS?
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

**BREAK OPPONENTS TERMINAL?**
```
w - to see open processes (do not break your terminal)
cat /dev/urandom > /dev/pts/0
```
