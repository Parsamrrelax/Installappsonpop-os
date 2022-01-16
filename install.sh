#hello
sudo apt update
echo "UPDATE COMPLETE"

# sudo apt upgrade
# echo "UPGRADE COMPLETE"


sudo apt-get --yes install mpv
echo "MPV INSTALLED"

sudo apt install --yes flameshot
echo "FLAMESHOT INSTALLED"

sudo apt install --yes gimp
echo "GIMP INSTALLED"

sudo apt install --yes telegram-desktop
echo "TELEGRAM INSTALLED"


mkdir /home/parsa/.fonts
cp '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Bold Italic.ttf' '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Bold.ttf' '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Italic.ttf' '/home/parsa/Installappsonpop-os/Downloading files/MesloLGS NF Regular.ttf' /home/parsa/.fonts/
fc-cache -fv
echo "NEW FONTS ADDED"

chmox +x Outline-Client.Appimage
echo "OUTLINE INSTALLED"

