set -e

timezone=${TIME_ZONE:-Europe/London}

# sudo yum install -y ntp

echo "### Setting timezone to $timezone ###"
sudo tee /etc/sysconfig/clock << EOF > /dev/null
ZONE="$timezone"
UTC=true
EOF

sudo ln -sf /usr/share/zoneinfo/$timezone /etc/localtime

# sudo chkconfig ntpd on
