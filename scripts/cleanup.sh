set -e

echo "### Performing final clean-up tasks ###"
sudo service docker stop
sudo chkconfig docker off
sudo rm -Rf /var/log/docker /var/log/ecs/*

# docker will recreate this socket file when the docker service is next started
sudo rm -Rf /var/run/docker.sock

# Remove Docker network database
sudo rm -rf /var/lib/docker/network

# Remove docker0 interface if it has been created
# || true systax means this command will always return a zero exit code even if the docker0 interface does not exist
sudo ip link del docker0 || true