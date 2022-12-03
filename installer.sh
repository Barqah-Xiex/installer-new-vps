echo "Memperbarui apt..."
apt upgrade -y;
apt update -y;
echo "menginstall package..."
apt install curl ffmpeg wget zip unzip -y;
echo "SetUp Nodejs..."
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -;
sleep 3;
apt update;
apt install nodejs -y;
npm install pm2 -g;
echo "SetUp canvas..."
sudo apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y;
echo "SetUp SSH..."
nano /etc/ssh/sshd_config
systemctl restart ssh;
echo "Mengubah TimeZone..."
sudo timedatectl set-timezone Asia/Jakarta;
echo "Masukan Link Bot: ";
read link
wget $link;
rm -rf *.zip;
unzip *.zip;
echo selesai
