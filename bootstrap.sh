# Upgrade packages.
sudo apt-get -y update
sudo apt-get -y upgrade

# Set time zone.
sudo rm /etc/localtime && sudo ln -s /usr/share/zoneinfo/Europe/Stockholm /etc/localtime

# Fix decent prompt
echo 'function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}") "
}' >> ~/.bashrc
echo 'PS1="\[\033[48;5;244;38;5;255m\]\u@\h:\W \$(parse_git_branch)$\[\033[00m\] "' >> ~/.bashrc

# Install Git.
sudo apt-get -y install git

# Install Node environment.
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
