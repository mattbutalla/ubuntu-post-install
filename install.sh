#!/bin/sh
STARTING_DIR=$(pwd)
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install curl git

#vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
rm microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get -y install apt-transport-https
sudo apt-get update
sudo apt-get -y install code # or code-insiders

#chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable

#spotify
sudo snap install spotify

#intellij
sudo snap install intellij-idea-ultimate --classic

#docker
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo usermod -aG docker $USER

#nodejs
sudo snap install node --classic --channel=10

#postman
sudo snap install postman

#gnome tweaks
sudo add-apt-repository -y -u ppa:snwh/ppa
sudo apt-get update
sudo apt-get -y install gnome-tweak-tool gnome-shell-extensions arc-theme paper-icon-theme
git clone https://github.com/home-sweet-gnome/dash-to-panel.git ~/dash-to-panel
cd ~/dash-to-panel
make install
cd ~
rm -fr ~/dash-to-panel
cd $STARTING_DIR
cp cof_orange_hex.png ~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/img
dconf write "/org/gnome/shell/enabled-extensions" "['user-theme@gnome-shell-extensions.gcampax.github.com', 'dash-to-panel@jderose9.github.com']"
dconf write "/org/gnome/shell/extensions/dash-to-panel/show-apps-icon-file" "'/home/$USER/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/img/cof_orange_hex.png'"
dconf write "/org/gnome/shell/extensions/dash-to-panel/show-favorites" "false"
dconf write "/org/gnome/shell/extensions/dash-to-panel/panel-size" "40"
dconf write "/org/gnome/shell/extensions/dash-to-panel/appicon-margin" "1"
dconf write "/org/gnome/shell/extensions/dash-to-panel/appicon-padding" "4"
dconf write "/org/gnome/shell/extensions/dash-to-panel/multi-monitors" "true"
dconf write "/org/gnome/shell/extensions/dash-to-panel/isolate-monitors" "true"
dconf write "/org/gnome/shell/extensions/dash-to-panel/focus-highlight-opacity" "20"
dconf write "/org/gnome/shell/extensions/dash-to-panel/dot-size" "2"
dconf write "/org/gnome/shell/extensions/dash-to-panel/show-showdesktop-button" "false"
dconf write "/org/gnome/shell/extensions/dash-to-panel/window-preview-padding" "10"
dconf write "/org/gnome/shell/extensions/dash-to-panel/tray-size" "12"
dconf write "/org/gnome/shell/extensions/dash-to-panel/tray-padding" "4"
dconf write "/org/gnome/shell/extensions/dash-to-panel/status-icon-padding" "2"
dconf write "/org/gnome/shell/extensions/dash-to-panel/window-preview-height" "75"
dconf write "/org/gnome/shell/extensions/dash-to-panel/window-preview-width" "200"
dconf write "/org/gnome/shell/extensions/dash-to-panel/window-preview-padding" "0"
dconf write "/org/gnome/shell/extensions/dash-to-panel/trans-use-custom-bg" "true"
dconf write "/org/gnome/shell/extensions/dash-to-panel/trans-bg-color" "'#000000'"
dconf write "/org/gnome/shell/extensions/dash-to-panel/trans-use-custom-opacity" "true"
dconf write "/org/gnome/shell/extensions/dash-to-panel/trans-panel-opacity" "0.75"
dconf write "/org/gnome/desktop/interface/font-name" "'Ubuntu 9'"
dconf write "/org/gnome/desktop/interface/monospace-font-name" "'Ubuntu Mono 10'"
dconf write "/org/gnome/desktop/wm/preferences/titlebar-font" "'Ubuntu 9'"
dconf write "/org/gnome/desktop/interface/gtk-theme" "'Arc-Dark'"
dconf write "/org/gnome/desktop/interface/cursor-theme" "'Paper'"
dconf write "/org/gnome/desktop/interface/icon-theme" "'Paper'"
dconf write "/org/gnome/shell/extensions/user-theme/name" "'Arc-Dark'"
dconf write "/org/gnome/desktop/interface/clock-show-date" "true"
dconf write "/org/gnome/desktop/interface/clock-format" "'12h'"
dconf write "/org/gnome/desktop/interface/clock-show-weekday" "false"
dconf write "/org/gnome/terminal/legacy/profiles:/list" "['b1dcc9dd-5262-4d8d-a863-c897e6d979b9']"
dconf write "/org/gnome/terminal/legacy/profiles:/default" "'b1dcc9dd-5262-4d8d-a863-c897e6d979b9'"
dconf write "/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-color" "'rgb(46,52,54)'"
dconf write "/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/foreground-color" "'rgb(211,215,207)'"
dconf write "/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-transparent-background" "true"
dconf write "/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-transparency-percent" "7"
dconf write "/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-colors" "false"
dconf write "/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-transparency" "false"
dconf write "/org/gnome/settings-daemon/peripherals/keyboard/numlock-state" "'on'"
dconf write "/org/gnome/nautilus/preferences/default-folder-viewer" "'list-view'"
dconf write "/org/gnome/nautilus/list-view/default-zoom-level" "'small'"
dconf write "/org/gnome/nautilus/window-state/sidebar-width" "205"
dconf write "/org/gtk/settings/file-chooser/show-hidden" "true"
dconf write "/org/gnome/settings-daemon/plugins/media-keys/home" "'<Super>e'"

#zsh
sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sudo apt-get -y install fonts-powerline

#dotfiles
rm ~/.gitconfig ~/.zshrc
ln -s $STARTING_DIR/dotfiles/.gitconfig ~/.gitconfig
ln -s $STARTING_DIR/dotfiles/.zshrc ~/.zshrc