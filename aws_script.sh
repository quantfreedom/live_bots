#! /bin/bash
sudo su - ubuntu
cd /home/ubuntu
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
sudo apt-get update
sudo apt --yes --force-yes install python3-pip
curl -L -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28"  -H "Authorization: Bearer %%%%%%%GITHUB_TOKEN" https://api.github.com/repos/quantfreedom1022/live_bots/tarball/main --output live_bots.tar.gz
tar -xvf live_bots.tar.gz
mv Quant* live_bots
cd live_bots
pip install quantfreedom==0.1.4.1
export PATH="$PATH:/home/ubuntu/.local/bin"
cd strat_test
python3 %%%%%%%EXCHANGE_run.py %%%%%%%API_KEY %%%%%%%SECRET_KEY %%%%%%%USE_TEST_NET