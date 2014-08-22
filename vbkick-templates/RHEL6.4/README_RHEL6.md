# Description

RHEL 6 [vbkick](https://github.com/wilas/vbkick) template. Help creates Vagrant base boxes. Vagrant SSH insecure keys are used.

Directly migrates CentOS definitions to RHEL

## Howto

### For RHEL 6.4 with partitions, X windows, desktop, and web server
```
ln -s definition-6.4-x86_64-X-partition-web.cfg definition.cfg
vbkick build rhel6.4-web
# watch and wait
```

### For RHEL 6.4 with no, no x windows
```
ln -s definition-6.4-x86_64-noX.cfg definition.cfg
vbkick build rhel6.4-noX
# watch and wait
```

