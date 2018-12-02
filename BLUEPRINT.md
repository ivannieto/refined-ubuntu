# Installation

```bash
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes dist-upgrade
```

# To use gsettings from command line

```bash
sudo apt install -y \
dconf-tools
```

# Compilation tools


```bash
sudo apt install -y \
build-essential
```

# Libs needed for OpenfortiGUI

```bash
sudo apt install -y \
libdouble-conversion1 \
libqt5core5a \
libqt5dbus5 \
libqt5gui5 \
libqt5keychain1 \
libqt5network5 \
libqt5svg5 \
libqt5widgets5 \
libxcb-xinerama0 \
qt5-gtk-platformtheme \
qttranslations5-l10n
```

# Basics

```bash
sudo apt install -y \
afuse \
aptitude \
autoconf \
automake \
axel \
build-essential \
bzip2 \
colortest \
curl \
diffutils \
dos2unix \
fdupes \
ftp-ssl \
gawk \
gcc \
git \
git-core \
git-flow \
gparted \
grep \
gzip \
gnome-themes-standard \
gtk2-engines-murrine \
htop \
httping \
iftop \
imagemagick \
iotop \
less \
lftp \
libgtk-3-dev \
lightdm-gtk-greeter-settings \
make \
nano \
nfs-common \
nmap \
net-tools \
openssl \
pkg-config \
p7zip-full \
pv \
pwgen \
ranger \
rar \
rsync \
smbclient \
software-properties-common \
sshfs \
sshpass \
tar \
texinfo \
tmux \
trash-cli \
tig \
tilix \
unzip \
ubuntu-restricted-extras \
ubuntu-tweak-tool \
vim \
wget \
whois \
zeal \
zip \
zlib1g-dev \
zsh
```

# Remove Bloatware

```bash
sudo apt-get purge --auto-remove \
account-plugin-facebook \
account-plugin-flickr \
account-plugin-jabber \
account-plugin-salut \
account-plugin-twitter \
account-plugin-windows-live \
account-plugin-yahoo \
aisleriot \
brltty \
deja-dup \
duplicity \
empathy \
empathy-common \
evolution-data-server-online-accounts \
example-content \
gnome-accessibility-themes \
gnome-contacts \
gnome-mahjongg \
gnome-mines \
gnome-orca \
gnome-screensaver \
gnome-sudoku \
gnome-video-effects \
gnomine \
landscape-common \
libreoffice-avmedia-backend-gstreamer \
libreoffice-calc \
libreoffice-draw \
libreoffice-gnome \
libreoffice-gtk \
libreoffice-impress \
libreoffice-math \
libreoffice-ogltrans \
libreoffice-pdfimport \
libreoffice-style-galaxy \
libreoffice-style-human \
libsane \
libsane-common \
mcp-account-manager-uoa \
mediascanner2.0 \
python3-uno \
rhythmbox \
rhythmbox-plugins \
rhythmbox-plugin-zeitgeist \
sane-utils \
shotwell \
shotwell-common \
telepathy-gabble \
telepathy-haze \
telepathy-idle \
telepathy-indicator \
telepathy-logger \
telepathy-mission-control-5 \
telepathy-salut \
thunderbird \
thunderbird-gnome-support \
totem \
totem-common \
totem-plugins \
unity-scope-chromiumbookmarks \
unity-scope-colourlovers \
unity-scope-devhelp \
unity-scope-firefoxbookmarks \
unity-scope-googlenews \
unity-scope-launchpad \
unity-scope-manpages \
unity-scope-musicstores \
unity-scope-onlinemusic \
unity-scope-openclipart \
unity-lens-shopping \
unity-scope-texdoc \
unity-scope-tomboy \
unity-scope-video-remote \
unity-scope-virtualbox \
unity-scope-yahoostock \
unity-scope-yelp \
unity-scope-zotero \
yelp
```

# Fix settings if dissapeared

```bash
sudo apt install unity-control-center
sudo apt install gnome-control-center
```

# Appearance

```bash
sudo apt install gnome-shell-extensions && \
firefox https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/
sudo apt install firefox-gnome-shell
firefox https://extensions.gnome.org/
```

# Enable user themes extension

# Will be set as default later through gsettings

# Set icons

```bash
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt-get install paper-icon-theme
```

# Install fonts

```bash
sudo apt-get install fonts-powerline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

# Oh My Zsh

## TODO search for installer

```bash
sudo apt-get install zsh git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
```

# Tilix

## Set default terminal

```bash
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant 'light'
gsettings set org.gnome.desktop.default-applications.terminal exec 'tilix'
```

## Fix for tilix

```bash
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# Update ~/.bashrc (or ~/.zshrc if you are using zsh) to execute vte.sh directly, this involves adding the following line at the end of the file.   
# if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#         source /etc/profile.d/vte.sh
# fi

## Themes for Tilix
```

```bash
mkdir -p .config/tilix
mkdir -p .config/tilix/schemes
wget -qO $HOME"/.config/tilix/schemes/argonaut.json" https://git.io/v7QV5
```

## Set manually configuration for Argonaut profile

# Clean system

## Remove Amazon shortcut

```bash
sudo rm /usr/share/applications/ubuntu-amazon-default.desktop

## Remove examples

```bash
sudo rm ~/examples.desktop

### Gsettings will need to get dconf-tools installed

```bash

## Show % battery

gsettings set com.canonical.indicator.power show-percentage true

## Preferred player Spotify

gsettings set com.canonical.indicator.sound interested-media-players "['spotify.desktop']"
gsettings set com.canonical.indicator.sound preferred-media-players "['spotify.desktop']"

## Proper form factor as netbook

gsettings set com.canonical.Unity form-factor 'Netbook'

## Disable WebApps and other shitty integrations

gsettings set com.canonical.unity.webapps integration-allowed false
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"
gsettings set com.canonical.Unity.Lenses remote-content-search 'none'

##TODO### -> gsettings set com.canonical.unity.webapps preauthorized-domains "[]"
##TODO### -> gsettings set com.canonical.Unity.ApplicationsLens display-available-apps false

## Interval for notifier on updates

gsettings set com.ubuntu.update-notifier regular-auto-launch-interval 0

## Backups

gsettings set org.gnome.DejaDup backend 'file'
gsettings set org.gnome.DejaDup delete-after 365
gsettings set org.gnome.DejaDup include-list "['/home/ivan/Development', '/home/ivan/Imágenes']"
gsettings set org.gnome.DejaDup periodic-period 1

## Set background picture

gsettings set org.gnome.desktop.background picture-uri 'https://globalleadershipfoundation.com/assets/files/2015/09/1mp6lukmx2w-stefanus-martanto-setyo-husodo.jpg'

## Set default Arc theme

gsettings set org.gnome.Terminal.Legacy.Settings theme-variant 'dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Darker'
gsettings set org.gnome.shell.extensions.user-theme name 'Arc-Dark'

## Set default icons

gsettings set org.gnome.desktop.interface icon-theme 'Paper'


## Set styles for gedit

gsettings set org.gnome.gedit.preferences.editor scheme 'cobalt'

gsettings set org.gnome.desktop.a11y.magnifier mag-factor 5.0
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'es')]"
gsettings set org.gnome.desktop.media-handling autorun-never true
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false

gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.preferences executable-text-activation 'ask'

gsettings set org.gnome.settings-daemon.plugins.power critical-battery-action 'shutdown'
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action 'nothing'

gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 16
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'

```

# tmux

```bash
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

# VirtualBox

```bash
virtualbox
virtualbox-guest-additions-iso
sudo adduser ivan vboxusers
```

# Vim

```bash
- vim
```

# Git

```bash
git
git-flow
git
gitk
gitg
```


There are 3 levels of git config; project, global and system.

    project: Project configs are only available for the current project and stored in .git/config in the project's directory.
    global: Global configs are available for all projects for the current user and stored in ~/.gitconfig.
    system: System configs are available for all the users/projects and stored in /etc/gitconfig.

Create a project specific config, you have to execute this under the project's directory:

$ git config user.name "John Doe" 

Create a global config:

$ git config --global user.name "John Doe"

Create a system config:

$ git config --system user.name "John Doe" 

And as you may guess, project overrides global and global overrides system.

## For work

```bash
git config global --user.name "Ivan Nieto"
git config global --user.email "inieto@gradiant.org"

# Python

```bash
- python-pip
- python3-pip
```

# VSCode
```bash
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code
```

## Install manually Settings Sync extension

## token

cfdbd39a44ca1a7fa62c315650bf8cec8ab3d4bc

## gist

a8ce5c334e71d9fde265e32c50429076


# Chrome

```bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable
```

# Firefox

```bash
cd ~/Descargas
wget -c https://ftp.mozilla.org/pub/firefox/releases/63.0/linux-x86_64/es-ES/firefox-63.0.tar.bz2
tar -xjvf firefox-63.0.tar.bz2
sudo mv ~/Descargas/firefox /opt/firefox
sudo ln -s /opt/firefox/firefox /usr/bin/firefox
alias firefox='nohup firefox &>/dev/null &'
```

# VLC

```bash
- vlc
```

# Java

```bash
echo "INSTALLING JAVA 8 AS USER `whoami` "

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list

## Accept license non-iteractive
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

## Make sure Java 8 becomes default java
sudo apt-get install -y oracle-java8-set-default
```

# MySQL

```bash
- mysql-server
- mysql-client
- mysql-workbench
```

# Docker

```bash
## Use the official docker install script

wget -qO- https://get.docker.com/ | sh

## Install docker-compose

COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | tail -n 1`
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"

## Install docker-cleanup command

cd /tmp
git clone https://gist.github.com/76b450a0c986e576e98b.git
cd 76b450a0c986e576e98b
sudo mv docker-cleanup /usr/local/bin/docker-cleanup
sudo chmod +x /usr/local/bin/docker-cleanup
```

# SSH

```bash
sudo apt install openssh-server
cat /dev/zero | ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -P ""

## If the ~/ssh/id_rsa file already exists, the command will exit. If not, you get a brand new key
```

# Spotify

```bash
## 1. Add the Spotify repository signing keys to be able to verify downloaded packages

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

## 2. Add the Spotify repository

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

## 3. Update list of available packages

sudo apt-get update

## 4. Install Spotify

sudo apt-get install spotify-client --install-recommends
```

# OpenFortiGUI (VPN)

```bash
cd ~/Descargas
wget https://apt.iteas.at/iteas/pool/main/o/openfortigui/openfortigui_0.7.2-3_bionic_amd64.deb
sudo dpkg -i ~/Descargas/openfortigui_0.7.2-3_bionic_amd64.deb
```

# Cool Tools

## Manage spotify controls from terminal

https://github.com/pwittchen/spotify-cli-linux

