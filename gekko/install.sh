#!/usr/bin/env bash

"""
Installing Gekko on Ubuntu Desktop 18.04.1
"""

sudo apt-get -qq update
sudo apt-get install -y git
sudo apt-get install -y curl

# for shared clipboard
sudo apt-get install -y virtualbox-guests-dmks
sudo apt-get install -y virtualbox-guests-source
sudo apt-get install -y virtualbox-guests-utils
sudo apt-get install -y virtualbox-guests-x11

# need to restart vbox?

# node
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g n
sudo n stable

sudo apt-get install -y npm
sudo npm install npm@latest -g 

# gekko
git clone git://github.com/askmike/gekko.git -b stable
cd gekko

npm install --only=production
cd exchange
npm install --only=production

git clone https://github.com/xFFFFF/Gekko-Strategies
cd Gekko-Strategies
bash install.sh
# requires manual input

SCRIPT="
#!/usr/bin/env bash
cd $HOME/gekko
node gekko --ui
"

echo "$SCRIPT" >> $HOME/Desktop/start_gekko
chmod u+x $HOME/Desktop/start_gekko
# https://askubuntu.com/a/668114


# gekko runs on http://localhost:3000/#/home

