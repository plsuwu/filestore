# gen some random trash
FLAG_ROOT=$(dd if=/dev/random bs=32 count=1 2> /dev/null | md5sum | cut -b 1-32)
FLAG_USER=$(dd if=/dev/random bs=32 count=1 2> /dev/null | md5sum | cut -b 1-32)
PASS_ROOT=$(dd if=/dev/random bs=32 count=1 2> /dev/null | md5sum | cut -b 1-32)
PASS_USER='PLEASE' # dont read this one

useradd -m -p $PASSUSER pls

# deluser pls sudo
groupadd docker
usermod -aG docker pls
newgrp docker

echo "flag{$FLAG_ROOT}" > /root/root.txt
echo "flag{$FLAG_ROOT}" > /home/pls/user.txt

chown root:root /root/root.txt && chmod 640 /root/root.txt
chown root:pls /home/pls/user.txt && chmod 644 /home/pls/user.txt

ln -sf /dev/null /root/.bash_history
ln -sf /dev/null /home/pls/.bash_history

# used to self-delete this install script containing spoilers but we exec from curl stdout now.
# rm -- "$0"
