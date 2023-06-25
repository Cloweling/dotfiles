#! /bin/bash
    FOLDER_DCONF_BACKUP="dconf"
    dconf dump /org/gnome/shell/ > $FOLDER_DCONF_BACKUP/gnome-shell.dconf
    dconf dump /org/gnome/terminal/legacy/profiles:/ > $FOLDER_DCONF_BACKUP/gnome-terminal-profiles.dconf
    dconf dump /org/gnome/shell/extensions/dash-to-dock/ > $FOLDER_DCONF_BACKUP/dash-to-dock.dconf
    dconf dump /org/gnome/shell/app-switcher/ > $FOLDER_DCONF_BACKUP/app-switcher.dconf
    dconf dump /org/gnome/shell/extensions/ding/ > $FOLDER_DCONF_BACKUP/ding.dconf
    dconf dump /org/gnome/shell/extensions/vitals/ > $FOLDER_DCONF_BACKUP/vitals.dconf
    dconf dump /org/gnome/shell/world-clocks/ > $FOLDER_DCONF_BACKUP/world-clocks.dconf
    dconf dump /org/gnome/shell/weather/ > $FOLDER_DCONF_BACKUP/weather.dconf
