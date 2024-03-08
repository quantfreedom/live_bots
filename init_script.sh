#! /bin/bash
sudo su - ubuntu
cd /home/ubuntu
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
sudo apt-get update
sudo apt --yes --force-yes install python3-pip
curl -L -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"  -H "Authorization: Bearer github_token" https://api.github.com/repos/quantfreedom1022/live-bots/tarball/main --output bybit_test.tar.gz
tar -xvf bybit_test.tar.gz
mv Quant* bybit_test
cd bybit_test
pip install quantfreedom==0.1.4.1
export PATH="$PATH:/home/ubuntu/.local/bin"
cd 02_rsi_rising_falling
python3 bybit_main.py "api_key" "secret_key"