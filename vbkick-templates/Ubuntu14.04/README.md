# Description

Ubuntu 14.04 [vbkick](https://github.com/wilas/vbkick) template. Help creates Vagrant base boxes. Vagrant SSH insecure keys are used.

## Howto

### change definition (change the target of a symlink)
```
    rm vbmachine.cfg
    ln -fs vbmachine-notgovready-ubuntu-14.04-x86_64-noX-0.1.0.cfg vbmachine.cfg
```

### create new vagrant base box
```
    vbkick  build        Ubuntu_box
    vbkick  postinstall  Ubuntu_box
    vbkick  validate     Ubuntu_box
    vbkick  export       Ubuntu_box
```

### update existing vagrant base box
```
    vbkick  update       Ubuntu_box
    vbkick  validate     Ubuntu_box
    vbkick  export       Ubuntu_box
```
