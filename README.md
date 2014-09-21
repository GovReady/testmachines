TestMachines (for GovReady)
===========================

Pre-configured virtual machines for testing GovReady (https://github.com/GovReady/govready)

# What
This repo launches three Linux vrtual machines for testing GovReady:
- RHEL 6.4 64 bit (RedHat flavor)
- CentOS 6.5 64 bit (RedHat flavor)
- Ubuntu 12.04 64 bit (Ubuntu flavor)


# How to use
### Step 1: Clone this repo and change into directory of cloned repo

Executing from the command line looks like (`$` indicates prompt): 

```
$ git clone git@github.com:GovReady/testmachines.git
$ cd testmachines

```

### Step 2: Use Vagrant to launch one (or more) of the test virtual machines.

There are at least four vm's to choose between. Use 'vagrant status` for list.

First 'vagrant up <vm_name>` for a vm takes 5 to 10 min to download the vagrant box. 
Launching takes less than a couple of minutes each box.

Executing from the command line looks like (`$` indicates prompt): 

```
$ vagrant status
Current machine states:

rhel64web                 not created (virtualbox)
rhel64db                  not created (virtualbox)
centos65                  not created (virtualbox)
ubuntu12044               not created (virtualbox)

$ vagrant up centos65
...
centos65: Booting VM...
centos65: Waiting for machine to boot. This may take a few minutes...
centos65: SSH address: 127.0.0.1:2322
centos65: SSH username: vagrant
centos65: SSH auth method: private key
centos65: Machine booted and ready!

```

### Step 3: SSH into one or other vagrant box and install GovReady

Executing from the command line looks like (`$` indicates prompt): 
```
$ vagrant ssh centos65

Last login: Fri Jul 11 02:44:11 2014 from 10.0.2.2

[vagrant@vagrant ~]$ curl -Lk io.govready.org/install | sudo bash

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  4023  100  4023    0     0    754      0  0:00:05  0:00:05 --:--:-- 75905
[INFO] Pinging GovReady
[INFO] Make sure directory /usr/local/bin exists
[INFO] Downloading and installing https://raw.githubusercontent.com/GovReady/govready/master/govready
[INFO] Downloading and installing https://raw.githubusercontent.com/GovReady/govready/master/govreadycp
[INFO] GovReady install succeeded.
govready version
0.4.2

```



To try govready toolkit further, see: https://github.com/GovReady/govready

# Templates
`vbkick-templates` provides vbkick virtual machine configuration files for building VirtualBox VM's from source ISO and kick start files.
