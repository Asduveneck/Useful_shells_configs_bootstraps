
# ================== Downloading programming languages

### Already Ran:

# ============= Node
# curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
# sudo apt-get install -y nodejs
# node --version
# sudo apt-get install software-properties-common
# sudo apt-get install gcc g++ make && sudo apt-get install yarn

# Docker
# Install in Windows Ecosystem via: https://hub.docker.com/editions/community/docker-ce-desktop-windows
# above did NOT work. Below did:
# https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly#configure-docker-for-windows

# Install Docker's package dependencies.
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Download and add Docker's official public PGP key.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint.
sudo apt-key fingerprint 0EBFCD88

# Add the `stable` channel's Docker upstream repository.
#
# If you want to live on the edge, you can change "stable" below to "test" or
# "nightly". I highly recommend sticking with stable!
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

# Update the apt package list (for the new apt repo).
sudo apt-get update -y

# Install the latest version of Docker CE.
sudo apt-get install -y docker-ce

# Allow your user to access the Docker CLI without needing root access.
sudo usermod -aG docker $USER


#https://cepa.io/2018/02/10/linuxizing-your-windows-pc-part1/ # dubious
# docker ps

# https://pipenv-es.readthedocs.io/es/stable/
# 
# Python

sudo apt -y purge python-pip # needed to purge. https://github.com/microsoft/WSL/issues/4020
sudo python -m pip uninstall pip
sudo apt -y install python-pip
pip install --upgrade pip
echo "export PATH=\"${HOME}/.local/bin:$PATH\"" >>"${HOME}"/.bashrc


# Dealing with ubuntu issues: https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7
python --version # returns 3.6.9 crap
python3.7 --version # returns what we want. Now we need to set it as a default:
update-alternatives --install /usr/bin/python python /usr/bin/python3 10



# Install Docker Compose into your user's home directory.
pip3 install --user docker-compose

# ========================= PostgreSQL 
# https://medium.com/@harshityadav95/postgresql-in-windows-subsystem-for-linux-wsl-6dc751ac1ff3
sudo apt-get install postgresql

# starting service
# sudo service postgresql start

# Connecting to postgres
# sudo -u postgres ps

