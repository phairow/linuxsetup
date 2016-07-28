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

force ubuntu to run at startup

```
    gnome-session-properties
```

click Add

- name = Key Modifiers
- Command = [see setxkbmap command above]

## install some packages

```
    sudo apt-get install vim
    sudo apt-get install curl
    sudo apt-get install -y build-essential
    
```

## install nvm (nodejs/npm v4.3.2 at time of this writing)
- https://github.com/creationix/nvm

## install some apps
- Atom editor
- Chrome (or may already have Chromium)
- Firefox
- Brave
