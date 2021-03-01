set -e


sudo sed -i -e '/^repo_update: /{h;s/: .*/: false/};${x;/^$/{s//repo_update: false/;H};x}' /etc/cloud/cloud.cfg
sudo sed -i -e '/^repo_upgrade: /{h;s/: .*/: none/};${x;/^$/{s//repo_update: none/;H};x}' /etc/cloud/cloud.cfg