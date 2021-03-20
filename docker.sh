// Update the package index

sudo apt-get update

// Install packages to allow apt to use the repository over HTTPS

sudo apt install apt-transport-https ca-certificates curl software-properties-common

// Add Docker's official GPG key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

// Setup a stable repository

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

// Update the package index

sudo apt-get update

// Install docker, containerd

sudo apt-get install docker-ce

// Pull the nginx image

sudo docker pull nginx:1.17.0

// Create a container out of the image

sudo docker run --name sampleapp -p 80:80 -d nginx:1.17.0

//remove running dockers

sudo docker rm -f $(docker ps -aq)
