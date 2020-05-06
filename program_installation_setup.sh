
# ================== Downloading programming languages

### Already Ran:


################################################################################
#                                     Node                                     #
################################################################################


curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
node --version
sudo apt-get install software-properties-common
sudo apt-get install gcc g++ make && sudo apt-get install yarn

################################################################################
#                                     Yarn                                     #
################################################################################

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

################################################################################
#                                  PostgreSQL                                  #
################################################################################


# https://medium.com/@harshityadav95/postgresql-in-windows-subsystem-for-linux-wsl-6dc751ac1ff3
sudo apt-get install postgresql

starting service
sudo service postgresql start

Connecting to postgres
sudo -u postgres ps

################################################################################
#                                    Python                                    #
################################################################################

# https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/ 
# sudo ln -fs /usr/bin/python3.7 /usr/bin/python   # had to do stuff with yarn FML
# first 3 steps roughly same. Last from Javin
sudo apt-get update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get install -y python3.7 python-dev  libpq-dev libssl-dev apt-transport-https ca-certificates curl gnupg-agent python3-pip python3.7-dev
# If your default Python is higher ( 3.8) uncomment below:
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2
sudo pip3 install pipenv
sudo apt update

# https://github.com/pypa/pipenv/issues/3488 # shows how to adjust pipenv that works...
# https://stackoverflow.com/questions/41986507/unable-to-set-default-python-version-to-python3-in-ubuntu # change priority of python


################################################################################
#                                    Docker                                    #
################################################################################
# https://docs.docker.com/compose/install/ # followed for Linux
# Docker
# Install in Windows Ecosystem via: https://hub.docker.com/editions/community/docker-ce-desktop-windows

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
