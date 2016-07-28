# linuxsetup
setup linux environment

## recovery
mount readwrite filesystem from recovery mode

```
    mount -o remount,rw /
```

## xkb special key modifiers
- left alt = left ctrl
- left ctrl = special
- left special = left alt
```
    sudo vim /usr/share/X11/xkb/symbols/pc
```

```
    key <ALT> {    [ Control_L     ]   };
    key <LCTL> {    [ Super_L       ]   };
    key <LWIN> {    [ Alt_L     ]   };
```

clear cache

```
    sudo dpkg-reconfigure xkb-data
```

or

```
    sudo rm -rf /var/lib/xkb/*
```

restart machine
