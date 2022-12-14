echo "Memperbarui apt..."
apt upgrade -y;
apt update -y;
echo "menginstall package..."
apt install curl ffmpeg wget zip unzip figlet toilet -y;
echo "SetUp Nodejs..."
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -;
sleep 3;
apt update;
apt install nodejs -y;
npm install pm2 -g;
echo "SetUp canvas..."
sudo apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y;
echo "SetUp SSH..."
if [ $1 = "y" ]
then
  cp -rf template /etc/ssh/sshd_config
else
  nano /etc/ssh/sshd_config
fi
systemctl restart ssh;
echo "Mengubah TimeZone..."
sudo timedatectl set-timezone Asia/Jakarta;
echo "memasukan bashrc";
if [[ $2 = "n" ]]
then
  echo "tanpa bashrc";
else
  cp -rf "rc" "../.bashrc"
  echo "keluar dari folder...";
fi
cd;
pwd;
echo "Masukan Link Bot: ";
if [[ $3 = "n" ]]
then
  echo "skipping download zip";
else
  read link
  wget $link;
  unzip *.zip;
fi
echo selesai;
rm -rf installer-new-vps;
