
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


#https://cepa.io/2018/02/10/linuxizing-your-windows-pc-part1/
# docker ps

# Python

# Install Python 3 and PIP.
sudo apt-get install -y python3 python3-pip

# Install Docker Compose into your user's home directory.
pip3 install --user docker-compose

# ========================= PostgreSQL 
# https://medium.com/@harshityadav95/postgresql-in-windows-subsystem-for-linux-wsl-6dc751ac1ff3