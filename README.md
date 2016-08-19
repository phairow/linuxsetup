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
    sudo abt-get update
    sudo apt-get install vim
    sudo apt-get install curl
    sudo apt-get install -y build-essential
    
    // for docker
    sudo apt-get install apt-transport-https ca-certificates
    sudo apt-get install linux-image-extra-$(uname -r)
    apt-get install apparmor
```

## install nvm and nodejs/npm versions
- https://github.com/creationix/nvm

(using node v4.3.2 at time of this writing)

## install mongo to get mongo client
https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/

```
    echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
    
    sudo apt-get update
    
    sudo apt-get install -y mongodb-org

    sudo apt-get install -y mongodb-org=3.2.3 mongodb-org-server=3.2.3 mongodb-org-shell=3.2.3 mongodb-org-mongos=3.2.3 mongodb-org-tools=3.2.3
```

## install docker
https://docs.docker.com/engine/installation/linux/ubuntulinux/

## install docker-compose
https://docs.docker.com/compose/install/

## install some apps
- Atom editor (plugins: apm install atom-typescript; apm install linter)
- Chrome (or may already have Chromium)
- Firefox
- Brave
- Gimp
- Slack

# android
- java
- android studio
