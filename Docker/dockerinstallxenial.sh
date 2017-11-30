echo "Let's install Docker for Ubuntu 16.04 Xenial Xerus!"
sleep 3
echo "Let's get started!"
sleep 3
echo "Please input your superuser password whenever prompted."
sleep 1
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - > /dev/null
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - > /dev/null
apt-get update > /dev/null
apt-get install -y docker-ce > /dev/null
sleep 1
echo "Ok, I want you to just make sure that docker is running correctly."
sleep 3
sudo systemctl status docker
sudo usermod -aG docker ${USER}
echo "You'll need to enter your password here :)"
sleep 1
su - $USER
echo "Thanks for using this script to install Docker for Ubuntu 16.04 Xenial Xerus!"
sleep 3
clear
echo "Have a nice day!"
