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

Make a copy

```
     cp  /usr/share/X11/xkb/symbols/pc ~/xkb_pc.original
```

replace the pc105 sections

```
    sudo vim /usr/share/X11/xkb/symbols/pc
```

```
    key <BKSP> {        [ BackSpace, BackSpace  ]       };

    key  <TAB> {        [ Tab,  ISO_Left_Tab    ]       };
    key <RTRN> {        [ Return                ]       };

    key <CAPS> {        [ Caps_Lock             ]       };
    key <NMLK> {        [ Num_Lock              ]       };

    key <LFSH> {        [ Shift_L               ]       };
    key <LCTL> {        [ Control_L             ]       };
    key <LWIN> {        [ Super_L               ]       };

    key <RTSH> {        [ Shift_R               ]       };
    key <RCTL> {        [ Control_R             ]       };
    key <RWIN> {        [ Super_R               ]       };
    key <MENU> {        [ Menu                  ]       };
    
    // Beginning of modifier mappings.
    modifier_map Shift  { Shift_L, Shift_R };
    modifier_map Lock   { Caps_Lock };
    modifier_map Control{ Control_L, Control_R };
    modifier_map Mod2   { Num_Lock };
    modifier_map Mod4   { Super_L, Super_R };

    // Fake keys for virtual<->real modifiers mapping:
    key <LVL3> {	[ ISO_Level3_Shift	]	};
    key <MDSW> {	[ Mode_switch 		]	};
    modifier_map Mod5   { <LVL3>, <MDSW> };

    key <ALT>  {	[ NoSymbol, Alt_L	]	};
    include "altwin(meta_alt)"

    key <META> {	[ NoSymbol, Meta_L	]	};
    modifier_map Mod1   { <META> };

    key <SUPR> {	[ NoSymbol, Super_L	]	};
    modifier_map Mod4   { <SUPR> };

```

with

```
    key <BKSP> {        [ BackSpace, BackSpace  ]       };

    key  <TAB> {        [ Tab,  ISO_Left_Tab    ]       };
    key <RTRN> {        [ Return                ]       };

    key <CAPS> {        [ Control_L             ]       };
    key <NMLK> {        [ Num_Lock              ]       };

    key <LFSH> {        [ Shift_L               ]       };
    key <LCTL> {        [ Super_L             ]       };
    key <LWIN> {        [ Alt_L               ]       };

    key <RTSH> {        [ Shift_R               ]       };
    key <RCTL> {        [ Control_R             ]       };
    key <RWIN> {        [ Super_R               ]       };
    key <MENU> {        [ Menu                  ]       };
    
        // Beginning of modifier mappings.
    modifier_map Shift  { Shift_L, Shift_R };
    //modifier_map Lock   { Caps_Lock };
    modifier_map Control{ Alt_L, Control_R };
    modifier_map Mod2   { Num_Lock };
    modifier_map Mod4   { Alt_L, Super_R };

    // Fake keys for virtual<->real modifiers mapping:
    key <LVL3> {	[ ISO_Level3_Shift	]	};
    key <MDSW> {	[ Mode_switch 		]	};
    modifier_map Mod5   { <LVL3>, <MDSW> };

    key <ALT>  {	[ NoSymbol, Super_L	]	};
    include "altwin(meta_alt)"

    key <META> {	[ NoSymbol, Meta_L	]	};
    modifier_map Mod1   { <META> };

    key <SUPR> {	[ NoSymbol, Control_L	]	};
    modifier_map Mod4   { <SUPR> };

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
