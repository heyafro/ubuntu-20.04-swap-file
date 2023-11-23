sudo fallocate -l 6G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

# Display swap information to verify it's active
free -m

# Add entry for the swap in /etc/fstab
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Display the contents of /etc/fstab to verify the entry
cat /etc/fstab

echo "Swap is created and will be mounted on boot."
