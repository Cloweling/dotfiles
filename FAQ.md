# :rocket: FAQ

## :arrow_down: Install Theme Flatpak
### Create folder
```bash
mkdir $HOME/.icons
mkdir $HOME/.themes
```

### Add override flatpak
```bash
flatpak override --user org.aplication.name --filesystem=$HOME/.icons
flatpak override --user org.aplication.name --filesystem=$HOME/.themes
flatpak override --user org.aplication.name --env=GTK_THEME=Yaru-blue-dark
flatpak override --user org.aplication.name --env=ICON_THEME=Yaru-blue-dark
```

### reset (optional)
```bash
flatpak override --user --reset
```


## :arrow_down: Install Firefox
Uninstall the Firefox Snap
```bash
sudo snap remove firefox
```
Create an APT keyring (if one doesn’t already exist)
```bash
sudo install -d -m 0755 /etc/apt/keyrings
```
Import the Mozilla APT repo signing key (if wget is missing, install it first):
```bash
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
```
Add the Mozilla signing key to your sources.list
```bash
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
```
Set the Firefox package priority to ensure Mozilla’s DEB is always preferred. If you don’t do this the Ubuntu transition package will be reinstalled, and you’ll have the Firefox snap
```bash
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000

Package: firefox*
Pin: release o=Ubuntu
Pin-Priority: -1' | sudo tee /etc/apt/preferences.d/mozilla
```
Finally, use APT to remove Ubuntu’s pretend Firefox DEB (if still present) and installed the real-deal from Mozilla’s repository
```bash
sudo apt update && sudo apt remove firefox
```

```bash
sudo apt install firefox
```
(Optional): To use a localised version of Firefox (i.e., see the UI in a language other than American English) you need to install the corresponding language package. For example, to install French language support run:
```bash
sudo apt install firefox-l10n-mx
```