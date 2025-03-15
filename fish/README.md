# :rocket: FISH AND CONFIG

## :arrow_down: Install Ubuntu
### Install in repository
```bash
sudo apt install fish neovim curl lsd
```

Add fish Shell default
```bash
chsh -s /usr/bin/fish
``` 

### Install Vivid [Vivid repository](https://github.com/sharkdp/vivid)
```bash
sudo dpkg -i vivid-musl_0.10.1_amd64.deb 
```

### Install Starship [Starship page](https://starship.rs/)
```bash
curl -sS https://starship.rs/install.sh | sh
```

### Install Node Version Manager [fnm repository](https://github.com/Schniz/fnm)

```bash
curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell --install-dir $HOME/.local/share/fnm
```

### Install Java Version Manager [jenv repository](https://github.com/jenv/jenv)
```bash
git clone https://github.com/jenv/jenv.git ~/.jenv
```

Restart Shell
```bash
exec $SHELL -l
```

Create new group
```bash
sudo groupadd java
sudo usermod -aG java $USER
newgrp java
```
Create folder
```bash
sudo mkdir -p /opt/java
sudo chown root:java /opt/java
sudo chmod 770 /opt/java
```
Add on /opt/java, the JDK and configure
```bash
sudo chown -R root:java 21.0.1-oracle/
```

### Install Zellij [Zellij page](https://zellij.dev) with Snap




