sudo su;
apt upgrade -y;
apt update -y;
apt install curl ffmpeg wget zip unzip -y;
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -;
sleep 3;
apt update;
apt install nodejs -y;
npm install pm2 -g;
sudo apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y;
cp -rf template /etc/ssh/sshd_config;
systemctl restart ssh;
