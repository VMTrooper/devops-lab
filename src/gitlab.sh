. /vagrant/src/init.sh
echo "192.168.250.101  jenkins.vmtrooper.local" | sudo tee -a /etc/hosts

echo "
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install gitlab-ce
" | tee /home/vagrant/gitlab.sh