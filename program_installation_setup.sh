
# ================== Downloading programming languages

### Already Ran:


################################################################################
#                                     Node                                     #
################################################################################


# curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
# sudo apt-get install -y nodejs
# node --version
# sudo apt-get install software-properties-common
# sudo apt-get install gcc g++ make && sudo apt-get install yarn

# Docker
# Install in Windows Ecosystem via: https://hub.docker.com/editions/community/docker-ce-desktop-windows



################################################################################
#                                  PostgreSQL                                  #
################################################################################


# https://medium.com/@harshityadav95/postgresql-in-windows-subsystem-for-linux-wsl-6dc751ac1ff3
sudo apt-get install postgresql

# starting service
# sudo service postgresql start

# Connecting to postgres
# sudo -u postgres ps

################################################################################
#                                    Python                                    #
################################################################################
# https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/ 
# first 3 steps roughly same. Last from Javin
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install libpq-dev libssl-dev python3.7-dev

################################################################################
#                                    Docker                                    #
################################################################################
# https://docs.docker.com/compose/install/ # followed for Linux

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
