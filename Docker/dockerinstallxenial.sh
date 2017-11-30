clear
echo ""
sleep 1
echo ""
# This bit removes the old versions of Docker.
sudo apt-get remove docker docker-engine docker.io > /dev/null

# User friendly things
sleep 1
echo ""
sleep 1
echo ""
sleep 1
echo ""
sleep 1
echo "Let's install Docker for Ubuntu 16.04 Xenial Xerus!"
sleep 3
echo "If you are on the root account, please control-c this script, exit the prompt and run it again from your account."
sleep 3
echo "Please input your superuser password whenever prompted."
sleep 1

# Installing the stuff we need to install the stuff
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Installing docker repository key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adding docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Refreshing the apt cache
sudo apt-get update

# Installing docker
sudo apt-get install docker-ce

# Extra stuff to make it more user friendly
sleep 1
echo "Ok, I want you to just make sure that docker is running correctly."
sleep 3

# Fixing the user stuff and checking the status of docker
sudo systemctl status docker
sudo usermod -aG docker ${USER}
echo "You'll need to enter your password here :)"
sleep 1
su - $USER
echo "Thanks for using this script to install Docker for Ubuntu 16.04 Xenial Xerus!"
sleep 3
clear
echo "Have a nice day!"
