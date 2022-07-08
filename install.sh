#hello


sudo apt update
echo "UPDATE COMPLETE"

sudo apt full-upgrade
echo "UPGRADE COMPLETE"

#Apps Installing
sudo apt install -y mpv
echo "


MPV INSTALLED


"
sudo apt install -y git
echo "




GIT INSTALLED 




"
git clone https://github.com/Parsamrrelax/dotfiles
mv ~/dotfiles/* ~
echo "





CONFIG FILES UPDATED




"

sudo apt install -y flameshot
echo "


FLAMESHOT INSTALLED



"

sudo apt install -y gimp
echo "




GIMP INSTALLED




"

sudo apt install -y telegram-desktop
echo "




TELEGRAM INSTALLED




"

sudo apt install -y vlc
echo "




VLC INSTALLED




"

sudo apt install -y github-desktop
echo "




GITHUB DESKTOP INSTALLED




"

sudo apt install -y copyq
echo "



COPYQ INSTALLED



"

sudo apt install -y qbittorrent
echo "




QBITTORRENT INSTALLED



"

flatpak install -y jdownloader
echo "




JDOWNLOADER INSTALLED




"
sudo apt install -y btop
echo "





BTOP INSTALLED




"

sudo add-apt-repository -y ppa:gnumdk/lollypop
sudo apt -y update
sudo apt install -y lollypop
echo "



LOLLYPOP INSTALLED



"

sudo apt install -y gnome-tweaks
echo "



GNOME TWEAKS INSTALLED




"


sudo apt install -y xpad
echo "





XPAD INSTALLED





"
sh -c "$(curl -fsLS chezmoi.io/get)"
echo "




CHEZMOI INSTALLED




"


sudo apt install -y wine
echo "

















WINE INSTALLED






"
sudo apt install -y filezilla
echo '





FILEZILLA INSTALLED




'

sudo apt install -y lutris
echo "





LUTRIS INSTALLED






"
sudo apt install -y audacity
echo "





AUDACITY INSTALLED






"
sudo apt install -y python3-pip
echo "








PYTHON PIP INSTALLED






"
#System edits

#add fonts
mkdir /home/parsa/.fonts
sudo cp ~/installappsonpop-os/Downloading\ files/MesloLGS\ NF\ Bold\ Italic.ttf ~/installappsonpop-os/Downloading\ files/MesloLGS\ NF\ Bold.ttf ~/installappsonpop-os/Downloading\ files/MesloLGS\ NF\ Italic.ttf ~/installappsonpop-os/Downloading\ files/MesloLGS\ NF\ Regular.ttf /home/parsa/.fonts/
fc-cache -fv
echo "NEW FONTS ADDED"

#Add Vpn
chmox +x Outline-Client.Appimage
echo "OUTLINE INSTALLED"

#Add persian keyboard
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ir')]"
echo "PERSIAN LANGUAGE KEYBOARD ADDED"

#Install Vscodium
flatpak install flathub com.vscodium.codium 


echo '



VSCODIUM INSTALLED



'
#install cava
sudo apt install -y cava
echo '




CAVA INSTALLED



'
#install spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
echo '




SPOTIFY INSTALLED



'
#spicetify
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
cd ~
git clone https://github.com/spicetify/spicetify-themes
cd spicetify-themes
cp -r * ~/.config/spicetify/Themes
cp -r * ~/.spicetify/Themes
cd ~/.spicetify
./spicetify backup apply enable-devtool
#preview available themes
#https://github.com/morpheusthewhite/spicetify-themes/blob/master/THEMES.md
#spicetify config current_theme THEME_NAME
#spicetify config color_scheme SCHEME_NAME
#spicetify apply
cd ~
echo '



SPICETIFY INSTALLED




'
#Add Fan Control
sudo cp ~/Installappsonpop-os/Downloading\ files/isw.conf '/etc/'
sudo cp ~/Installappsonpop-os/Downloading\ files/isw-ec_sys2.conf '/etc/modprobe.d/isw-ec_sys.conf'
sudo cp ~/Installappsonpop-os/Downloading\ files/isw-ec_sys.conf '/etc/modules-load.d/'
sudo cp ~/Installappsonpop-os/Downloading\ files/isw@.service '/usr/lib/systemd/system/'
sudo cp ~/Installappsonpop-os/Downloading\ files/isw '/usr/bin/'

#Themes
git clone https://github.com/vinceliuice/Graphite-gtk-theme
cd Graphite-gtk-theme
./install.sh
cd ~
echo "





GRAPHITE THEME INSTALLED




"

#Add Graphite Theme to Flatpak Apps
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Graphite-dark



sudo apt install -y ttf-mscorefonts-installer
echo "








MS FONTS INSTALLED





"
git clone https://github.com/Parsamrrelax/MSIKLM
cd MSIKLM
./install.sh
echo "




KEYBOARD LIGHT MANAGER INSTALLED




"
cd ~
sudo pip install undervolt
echo "





UNDERVOLT INSTALLED





"

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

echo "






SUBLIME TEXT EDITOR INSTALLED





"




sudo undervolt --core -100 --cache -100
sudo apt install -y msr-tools
#rdmsr -p4 0x1a0 -f 38:38
#For checking turbo boost
# sudo chmod +x turbo-boost.sh
# ./turbo-boost.sh disable
# ./turbo-boost.sh enable

#Installing appimagelauncher anydesk obsidian nordvpn repo
cd ~/Installappsonpop-os/Downloading\ files/
sudo dpkg --install appimagelauncher.deb
sudo dpkg --install anydesk_6.1.1-1_amd64.deb
sudo dpkg --install obsidian_0.14.15_amd64.deb
sudo dpkg --install nordvpn-release_1.0.0_all.deb
cd ~
sudo apt update
sudo apt install -y nordvpn

#Installing Kodi
sudo apt install software-properties-common
sudo add-apt-repository -y ppa:team-xbmc/ppa
sudo apt install -y kodi

#Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#Install cargo
sudo apt install -y cargo

#Install spotify adblocker
cd ~
git clone https://github.com/abba23/spotify-adblock.git
cd spotify-adblock
make
sudo make install
#command to launch without ads
#LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify
cd ~
touch ~/.local/share/applications/spotify-adblock.desktop
# #[Desktop Entry]
# Type=Application
# Name=Spotify (adblock)
# GenericName=Music Player
# Icon=spotify-client
# TryExec=spotify
# Exec=env LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify %U
# Terminal=false
# MimeType=x-scheme-handler/spotify;
# Categories=Audio;Music;Player;AudioVideo;
# StartupWMClass=spotify
#add above lines without comment sign to the touched file for icon in launcher