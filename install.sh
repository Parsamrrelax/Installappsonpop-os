#hello
sudo apt update
echo "UPDATE COMPLETE"

# sudo apt upgrade
# echo "UPGRADE COMPLETE"

#Apps Installing
sudo apt-get install --yes mpv
echo "MPV INSTALLED"

sudo apt-get install --yes flameshot
echo "FLAMESHOT INSTALLED"

sudo apt-get install --yes gimp
echo "GIMP INSTALLED"

sudo apt-get install --yes telegram-desktop
echo "TELEGRAM INSTALLED"

sudo apt-get install --yes vlc
echo "VLC INSTALLED"

sudo apt-get install --yes github-desktop
echo "GITHUB DESKTOP INSTALLED"

sudo apt-get install --yes copyq
echo "COPYQ INSTALLED"

sudo apt-get install --yes qbittorrent
echo "QBITTORRENT INSTALLED"

flatpak install -y jdownloader
echo "JDOWNLOADER INSTALLED"

sudo add-apt-repository --yes ppa:gnumdk/lollypop
sudo apt-get --yes update
sudo apt-get install --yes lollypop
echo "LOLLYPOP INSTALLED"

sudo apt-get install --yes gnome-tweaks
echo "GNOME TWEAKS INSTALLED"




#System edits

#add fonts
mkdir /home/parsa/.fonts
cp '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Bold Italic.ttf' '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Bold.ttf' '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Italic.ttf' '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Regular.ttf' /home/parsa/.fonts/
fc-cache -fv
echo "NEW FONTS ADDED"

#Add Vpn
chmox +x Outline-Client.Appimage
echo "OUTLINE INSTALLED"

#Add persian keyboard
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ir')]"
echo "PERSIAN LANGUAGE KEYBOARD ADDED"

#Install Vscodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt-get update --yes && sudo apt-get install --yes codium

#Add Fan Control
sudo cp '/home/parsa/Installappsonpop-os/Downloading files/isw.conf' '/etc/'
sudo cp '/home/parsa/Installappsonpop-os/Downloading files/isw-ec_sys2.conf' '/etc/modprobe.d/isw-ec_sys.conf'
sudo cp '/home/parsa/Installappsonpop-os/Downloading files/isw-ec_sys.conf' '/etc/modules-load.d/'
sudo cp '/home/parsa/Installappsonpop-os/Downloading files/isw@.service' '/usr/lib/systemd/system/'
sudo cp '/home/parsa/Installappsonpop-os/Downloading files/isw' '/usr/bin/'

#Themes
git clone https://github.com/vinceliuice/Graphite-gtk-theme
cd Graphite-gtk-theme
./install.sh
quit
echo "GRAPHITE THEME INSTALLED"
