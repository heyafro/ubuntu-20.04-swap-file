sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -m 
echo "Created swap, its not persistent and will not be mounted on boot"
