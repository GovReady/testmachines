# Description

RHEL 6 [vbkick](https://github.com/wilas/vbkick) template. Help creates Vagrant base boxes. Vagrant SSH insecure keys are used.

The vbkick template files in this directory define a repeatable build of RHEL 6.4 from source iso and included kickstart file.

Vbkick looks to the `vbmachine.cfg` file by default for details on the virtual machine being built. Make `vbmachine.cfg` either a copy of the desired `*.cfg` file, or softlink `vbmachine.cfg` to the desired `*.cfg` file. The `vbmachine.cfg` file defines where to get the source iso files and the kickstart file to use to build the vm.

If you plan to make a vagrant box, you will need to run `vbkick postinstall <vm_name>` to execute the script that will add the VirtualBox extensions to the virtual machine.


## Create a RHEL 6.4 from source iso and export as vagrant box
The following steps will build a RHEL 6.4 with NIST FISMA RMF recommended partitions, X windows, desktop, and web server

### For RHEL 6.4 with partitions, X windows, desktop, and web server
```
# define softlink to desired vbmachine config file
ln -s vbmachine-6.4-x86_64-X-web.cfg vbmachine.cfg

# build the virtual machine
vbkick build rhel6.4-web

# tweak the configuration to support virtualbox extensions
vbkick postinstall rhel6.4-web
vbkick validate rhel6.4-web

# export the vagrant box
vbkick export rhel6.4-web

```

