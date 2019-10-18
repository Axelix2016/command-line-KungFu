#install#
sudo apt-get install openssh-server -y
sudo apt-get install -y curl openssh-server ca-certificates
#sudo apt-get install -y postfix ##
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
#setup the external url#
sudo EXTERNAL_URL="http://127.0.0.1" apt-get install gitlab-ce
#from local browser access UI from the url http://127.0.0.1 #
#give root a new password at first access#
