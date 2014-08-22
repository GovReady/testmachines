TestMachines (for GovReady)
===========================

Pre-configured virtual machines for testing GovReady (https://github.com/GovReady/govready)

# What
This repo launches three Linux vrtual machines for testing GovReady:
- RHEL 6.4 64 bit (RedHat flavor)
- CentOS 6.5 64 bit (RedHat flavor)
- Ubuntu 12.04 64 bit (Ubuntu flavor)


# How to use
### Step 1: Clone this repo and use Vagrant to launch the test machines.

First time will take 5 to 10 min to download each vagrant boxes. Launching takes less than a couple of minutes each.

Executing from the command line looks like (`$` indicates prompt): 

```
$ git clone git@github.com:GovReady/testmachines.git
$ cd testmachines
$ vagrant up
$ vagrant status
Current machine states:

redhat64                  running (virtualbox)
centos65                  running (virtualbox)
ubuntu12044               running (virtualbox)

# destroy virtual machines
vagrant destroy -f
```

### Step 2: SSH into one or other vagrant box and install GovReady

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

To launch just one of the virtual machines:
```
# launch
vagrant up centos65

# ssh in
vagrant ssh centos65

# destroy
vagrant destroy centos65
```

To try govready toolkit further, see: https://github.com/GovReady/govready

# Templates
`vbkick-templates` provides vbkick virtual machine configuration files for building VirtualBox VM's from source ISO and kick start files.
