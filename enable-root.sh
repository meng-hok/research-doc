#!/bin/bash

# Function to check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Exiting."
    exit 1
fi

# Step 1: Change the root password
echo "Changing the root password..."
echo "root:$1" | chpasswd
#echo "root:newpassword" | chpasswd
echo "Root password has been changed."

# Step 2: Enable root login via SSH
echo "Enabling root login for SSH..."

# Backup the original SSH config file
SSH_CONFIG="/etc/ssh/sshd_config"
if [ -f "$SSH_CONFIG" ]; then
    cp "$SSH_CONFIG" "$SSH_CONFIG.bak"
fi

# Update sshd_config to allow root login
sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' $SSH_CONFIG
sed -i 's/^PermitRootLogin.*/PermitRootLogin yes/' $SSH_CONFIG

# Make sure password authentication is allowed
#sed -i 's/^#PasswordAuthentication.*/PasswordAuthentication yes/' $SSH_CONFIG
#sed -i 's/^PasswordAuthentication.*/PasswordAuthentication yes/' $SSH_CONFIG

echo "SSH configuration updated to allow root login."

# Step 3: Restart the SSH service
echo "Restarting SSH service..."
systemctl restart sshd

# Step 4: Confirm changes
echo "Root login is enabled, and SSH has been restarted."
