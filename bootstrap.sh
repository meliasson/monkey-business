# Upgrade packages.
sudo apt-get -y update
sudo apt-get -y upgrade

# Set time zone.
sudo rm /etc/localtime && sudo ln -s /usr/share/zoneinfo/Europe/Stockholm /etc/localtime

# Install Git.
sudo apt-get -y install git

# Install Node environment.
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
