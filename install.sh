#hello

sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get update
sudo apt-get -y install apt-fast
echo "




PARALLEL DOWNLOADING ENABLED


"

sudo apt update
echo "UPDATE COMPLETE"

sudo apt full-upgrade
echo "UPGRADE COMPLETE"

#Apps Installing
sudo apt-get install --yes mpv
echo "


MPV INSTALLED


"
sudo apt-get install --yes git
echo "




GIT INSTALLED 




"
git clone https://github.com/Parsamrrelax/dotfiles
mv ~/dotfiles/* ~
echo "





CONFIG FILES UPDATED




"

sudo apt-get install --yes flameshot
echo "


FLAMESHOT INSTALLED



"

sudo apt-get install --yes gimp
echo "




GIMP INSTALLED




"

sudo apt-get install --yes telegram-desktop
echo "




TELEGRAM INSTALLED




"

sudo apt-get install --yes vlc
echo "




VLC INSTALLED




"

sudo apt-get install --yes github-desktop
echo "




GITHUB DESKTOP INSTALLED




"

sudo apt-get install --yes copyq
echo "



COPYQ INSTALLED



"

sudo apt-get install --yes qbittorrent
echo "




QBITTORRENT INSTALLED



"

flatpak install -y jdownloader
echo "




JDOWNLOADER INSTALLED




"

sudo add-apt-repository --yes ppa:gnumdk/lollypop
sudo apt-get --yes update
sudo apt-get install --yes lollypop
echo "



LOLLYPOP INSTALLED



"

sudo apt-get install --yes gnome-tweaks
echo "



GNOME TWEAKS INSTALLED




"


sudo apt-get install --yes xpad
echo "





XPAD INSTALLED





"
snap install chezmoi --classic
echo "




CHEZMOI INSTALLED




"


sudo apt-get install --yes wine
echo "

















WINE INSTALLED






"


sudo apt-get install --yes lutris
echo "





LUTRIS INSTALLED






"
sudo apt-get install --yes audacity
echo "





AUDACITY INSTALLED






"
sudo apt-get install --yes python3-pip
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


#Install snapd
sudo apt-get install --yes snapd

echo'




SNAPD INSTALLED




'
#Install Vscodium
snap install codium --classic



echo'



VSCODIUM INSTALLED



'

#Add Fan Control
sudo cp ~/installappsonpop-os/Downloading\ files/isw.conf '/etc/'
sudo cp ~/installappsonpop-os/Downloading\ files/isw-ec_sys2.conf '/etc/modprobe.d/isw-ec_sys.conf'
sudo cp ~/installappsonpop-os/Downloading\ files/isw-ec_sys.conf '/etc/modules-load.d/'
sudo cp ~/installappsonpop-os/Downloading\ files/isw@.service '/usr/lib/systemd/system/'
sudo cp ~/installappsonpop-os/Downloading\ files/isw '/usr/bin/'

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



sudo apt-get install --yes ttf-mscorefonts-installer
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
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

echo "






SUBLIME TEXT EDITOR INSTALLED





"




sudo undervolt --core -100 --cache -100
sudo apt-get install --yes msr-tools
#rdmsr -p4 0x1a0 -f 38:38
#For checking turbo boost
# sudo chmod +x turbo-boost.sh
# ./turbo-boost.sh disable
# ./turbo-boost.sh enable


