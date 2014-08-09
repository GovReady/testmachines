TestMachines (for GovReady)
===========================

Pre-configured virtual machines for testing GovReady

# What
This repo launches two Linux vrtual machines for testing GovReady:
- CentOS 6.5 64bit (RedHat flavor)
- Ubuntu 14.04 64 bit (Ubuntu flavor)


# How to use
Clone this repo and use Vagrant to launch the test machines.

```
$ git clone git@github.com:GovReady/testmachines.git
$ cd testmachines
$ vagrant up

$ # Sit back while vagrant boxes downloaded (first time only, takes more than an hour until I move vagrant boxes from S3)
$ # Wait for vagrant to build (< 4 min)

$ vagrant status
Current machine states:

centos65                  running (virtualbox)
ubuntu12044               running (virtualbox)

```

Now ssh into one or other vagrant box and install GovReady

```
# ssh into vagrant box
$ vagrant ssh centos65

Last login: Fri Jul 11 02:44:11 2014 from 10.0.2.2

# Install GovReady
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