{\rtf1\ansi\deff0\nouicompat{\fonttbl{\f0\fnil\fcharset0 Courier New;}}
{\colortbl ;\red0\green0\blue255;}
{\*\generator Riched20 10.0.10586}\viewkind4\uc1 
\pard\f0\fs22\lang1033 #!/bin/bash\par
\par
clear \par
\par
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"\par
echo "$(tput setaf 2)                        _______     _  _____   _"\par
echo "                       |__   __|   (_)|  __ \\ (_)  "\par
echo "                          | | _ __  _ | |__) | _   "\par
echo "                          | || '__|| ||  ___/ | |  "\par
echo "                          | || |   | || |     | |  "\par
echo "                          |_||_|   |_||_|     |_|  "\par
echo\par
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\\n"\par
echo\par
echo -e "$(tput setaf 2)Hi!\\n"\par
echo -e "This is the TriPi updater script."\par
echo\par
echo -e "I am going to install updates to your TriPi environment.\\n"\par
echo "This could potentially break things. If you have any issues, consult {{\field{\*\fldinst{HYPERLINK https://tripi.junaos.com }}{\fldrslt{https://tripi.junaos.com\ul0\cf0}}}}\f0\fs22  or submit an issue to github."\par
echo "Not all updates are the same, so check the README.md file to find out if this is a stable release!"\par
echo\par
echo "!!!!WARNING!!!! This Update is replacing RETROARCH.CFG, which means you may need to reconfigure any custom settings after this is done!"\par
echo -e "I will begin in 20 seconds...\\n\\n"\par
\par
sleep 20\par
\par
cd /home/pi/TriPi-Updater\par
\par
clear\par
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"\par
echo "$(tput setaf 2)                        _______     _  _____   _"\par
echo "                       |__   __|   (_)|  __ \\ (_)  "\par
echo "                          | | _ __  _ | |__) | _   "\par
echo "                          | || '__|| ||  ___/ | |  "\par
echo "                          | || |   | || |     | |  "\par
echo "                          |_||_|   |_||_|     |_|  "\par
echo\par
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\\n"\par
echo\par
echo "$(tput setaf 2)Checking xboxdrv... $(tput sgr 0)"\par
sleep 2\par
\par
apt-get -y install xboxdrv\par
adduser pi root\par
\par
clear\par
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"\par
echo "$(tput setaf 2)                        _______     _  _____   _"\par
echo "                       |__   __|   (_)|  __ \\ (_)  "\par
echo "                          | | _ __  _ | |__) | _   "\par
echo "                          | || '__|| ||  ___/ | |  "\par
echo "                          | || |   | || |     | |  "\par
echo "                          |_||_|   |_||_|     |_|  "\par
echo\par
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\\n"\par
echo\par
echo -e "\\n$(tput setaf 2)Removing old files and creating required directories...$(tput sgr 0)"\par
sleep 2\par
\par
mkdir /home/pi/RetroPie/roms/TriPi\par
#mkdir /etc/emulationstation/themes/simple-dark/TriPi\par
\par
cp /home/pi/TriPi-Updater/System/config.txt /boot/\par
cp /home/pi/TriPi-Updater/System/inittab /etc/\par
cp /home/pi/TriPi-Updater/System/rc.local /etc/\par
cp /home/pi/TriPi-Updater/System/emu.sh /etc/profile.d/\par
cp /home/pi/TriPi-Updater/System/.bashrc /home/pi\par

\pard cp /home/pi/TiPi-Updater/System/splashscreen.list /etc/\par
cp /home/pi/TiPi-Updater/System/asplashscreen /etc/init.d/\par
cp -r /home/pi/TiPi-Updater/System/TriPi /opt/retropie/supplementary/splashscreen/\par
cp /home/pi/TriPi-Updater/System/.bashrc \par
cp /home/pi/TriPi-Updater/System/es_systems.cfg /etc/emulationstation\par
cp /home/pi/TriPi-Updater/System/retroarch.cfg /opt/retropie/configs/all/\par

\pard\par
\par
cp /home/pi/TriPi-Updater/Ports/kodi.sh /home/pi/RetroPie/roms/ports\par
cp /home/pi/TriPi-Updater/Ports/killmc.sh /home/pi/\par
\par
cp Manual\\ Update.sh /home/pi/RetroPie/roms/TriPi\par
\par
cp /home/pi/TriPi-Updater/TriPi-Menu/theme.xml /etc/emulationstation/themes/simple-dark/TriPi\par
cp -r /home/pi/TriPi-Updater/TriPi-Menu/art /etc/emulationstation/themes/simple-dark/TriPi\par
\par
cp /home/pi/TriPi-Updater/Limelight/Install\\ Limelight.sh /home/pi/RetroPie/roms/TriPi\par
\par
clear\par
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"\par
echo "$(tput setaf 2)                        _______     _  _____   _"\par
echo "                       |__   __|   (_)|  __ \\ (_)  "\par
echo "                          | | _ __  _ | |__) | _   "\par
echo "                          | || '__|| ||  ___/ | |  "\par
echo "                          | || |   | || |     | |  "\par
echo "                          |_||_|   |_||_|     |_|  "\par
echo\par
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\\n"\par
echo\par
echo -e "\\n$(tput setaf 2)Setting Controller Keybinds for Minecraft-Pi... $(tput sgr 0)"\par
sleep 2\par
\par
cp /home/pi/TriPi-Updater/Ports/Minecraft\\ TriPi\\ Port.sh /home/pi/RetroPie/roms/ports\par
\par
clear\par
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"\par
echo "$(tput setaf 2)                        _______     _  _____   _"\par
echo "                       |__   __|   (_)|  __ \\ (_)  "\par
echo "                          | | _ __  _ | |__) | _   "\par
echo "                          | || '__|| ||  ___/ | |  "\par
echo "                          | || |   | || |     | |  "\par
echo "                          |_||_|   |_||_|     |_|  "\par
echo\par
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\\n"\par
echo\par
echo -e "\\n$(tput setaf 2)Setting permissions for new files...$(tput sgr 0)"\par
sleep 2\par
\par
\par
chmod +x \{/home/pi/RetroPie/roms/TriPi/Install\\ Limelight.sh,/home/pi/killmc.sh,/home/pi/RetroPie/roms/ports/kodi.sh,/home/pi/RetroPie/roms/ports/Minecraft\\ TriPi\\ Port.sh,/home/pi/RetroPie/roms/TriPi/Manual\\ Update.sh,/etc/profile.d/emu.sh,/etc/rc.local\}\par
chmod a+x /etc/init.d/asplashscreen\par
insserv /etc/init.d/asplashscreen\par
chmod +x /etc/emulationstation/es_systems.cfg\par
sudo chown -R pi:pi /home/pi/RetroPie/roms/\par
\par
\par
clear\par
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"\par
echo "$(tput setaf 2)                        _______     _  _____   _"\par
echo "                       |__   __|   (_)|  __ \\ (_)  "\par
echo "                          | | _ __  _ | |__) | _   "\par
echo "                          | || '__|| ||  ___/ | |  "\par
echo "                          | || |   | || |     | |  "\par
echo "                          |_||_|   |_||_|     |_|  "\par
echo\par
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\\n"\par
echo\par
echo -e "\\n$(tput setaf 2)Done!\\n" \par
\par
echo "I will reboot your Raspberry Pi in 10 seconds. ENJOY! -Pancakeykakes$(tput sgr 0)"\par
\par
SECONDS_TILL_REBOOT=10\par
\par
while [[ $\{SECONDS_TILL_REBOOT\} -gt 0 ]]; do\par
  sleep 1\par
  SECONDS_TILL_REBOOT=$[$\{SECONDS_TILL_REBOOT\} -1]\par
  if [[ $(($\{SECONDS_TILL_REBOOT\} % 5)) -eq 0 ]]; then\par
    echo "$\{SECONDS_TILL_REBOOT\} seconds until reboot"\par
  fi\par
done\par
\par
reboot\par
\par
}
 