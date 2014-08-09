TestMachines (for GovReady)
===========================

Pre-configured virtual machines for testing GovReady

# What
This repo launches two Linux vrtual machines for testing GovReady:
- CentOS 6.5 64 bit (RedHat flavor)
- Ubuntu 12.04 64 bit (Ubuntu flavor)


# How to use
### Step 1: Clone this repo and use Vagrant to launch the test machines.

First time will take a while to download the vagrant boxes. (And I mean like an hour until the virtual boxes are migrated from AWS S3.) After that launching takes less than 4 minutes.

Executing from the command line looks like (`$` indicates prompt): 

```
$ git clone git@github.com:GovReady/testmachines.git
$ cd testmachines
$ vagrant up
$ vagrant status
Current machine states:

centos65                  running (virtualbox)
ubuntu12044               running (virtualbox)
```

### Step 2: SSH into one or other vagrant box and install GovReady

Executing from the command line looks like (`$` indicates prompt): 
```
$ vagrant ssh centos65

Last login: Fri Jul 11 02:44:11 2014 from 10.0.2.2

[vagrant@vagrant ~]$ curl -Lk https://raw.githubusercontent.com/GovReady/govready/master/install.sh | sudo bash

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  4023  100  4023    0     0    754      0  0:00:05  0:00:05 --:--:-- 75905
[INFO] Pinging GovReady
[INFO] Make sure directory /usr/local/bin exists
[INFO] Downloading and installing https://raw.githubusercontent.com/GovReady/govready/master/govready
[INFO] Downloading and installing https://raw.githubusercontent.com/GovReady/govready/master/govreadycp
[INFO] GovReady install succeeded.
govready version
0.1.0-dev
[vagrant@vagrant ~]$
```

# Templates
`vbkick-templates` provides vbkick virtual machine configuration files for building VirtualBox VM's from source ISO and kick start files.