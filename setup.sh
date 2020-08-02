# add fonsi

adduser --disabled-password --gecos "" fons
echo fons:fons | chpasswd # yes thats my password but dont tell anyone please xoxo fonsi
usermod -aG sudo fons

mkdir /home/fons/.ssh
cp /root/.ssh/authorized_keys /home/fons/.ssh/

chown -R fons:fons /home/fons/.ssh
chmod 700 /home/fons/.ssh
chmod 600 /home/fons/.ssh/authorized_keys

cp ./setupfonsi.sh /home/fons/setupfonsi.sh
chown -R fons:fons /home/fons/setupfonsi.sh
chmod a+rwx /home/fons/setupfonsi.sh

echo "Now do"
echo "sh ./setupfonsi.sh"

su - fons
