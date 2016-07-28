# linuxsetup
setup linux environment

## recovery
mount readwrite filesystem from recovery mode

```
    mount -o remount,rw /
```

## xkb special key modifiers
- left alt = left ctrl
- left special = left alt
- caps lock = left control
- both shift keys at once = caps lock
- one shift key releases caps lock

```
    setxkbmap -option 'caps:ctrl_modifier,altwin:ctrl_alt_win,shift:both_capslock_cancel'
```
