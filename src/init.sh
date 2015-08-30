echo "
192.168.250.10 devopsmaster.vmtrooper.local puppet
192.168.250.3  devops.vmtrooper.local
" | sudo tee -a /etc/hosts

echo "
deb ftp://192.168.250.3/ubuntu trusty universe
deb ftp://192.168.250.3/ubuntu trusty main restricted
deb ftp://192.168.250.3/ubuntu trusty-updates main restricted
" | sudo tee /etc/apt/sources.list

sudo apt-get update -qq

sudo apt-get install -qq -y vim