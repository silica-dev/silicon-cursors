#!/bin/bash
./build-carbide.sh
./build-dioxide.sh

echo -ne "Generating Installer...\\r"
        cp src/in.inst install.sh
echo -e "\033[0KGenerating Installer... DONE"

echo -ne "Making Installer Executable...\\r"
        sudo chmod +x install.sh

show_Msg() {
  echo -e "\033[1;34m$@\033[0m"
}
show_command() {
  echo -e "\033[1;93m$@\033[0m"
}

echo -e "\033[0KMaking Installer Executable... DONE"

show_Msg "For Installation Use Following Command:\n\n"
show_command "\t sudo ./install.sh\n"
exit

echo "COMPLETE!"