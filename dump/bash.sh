#!/bin/bash
proxy="socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080"
sudo apt update 
sudo apt install proxychains  -y 
sudo sed -i 's/socks4/socks5/' /etc/proxychains.conf 
sudo sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sudo sed -i 's/9050/10663/' /etc/proxychains.conf
wget https://github.com/toncoinpool/stratum-miner/releases/download/v2.1.1/TON-Stratum-Miner-2.1.1-linux-headless.tar.gz 
tar -xvf TON-Stratum-Miner-2.1.1-linux-headless.tar.gz 
cd TON-Stratum-Miner 
./TON-Stratum-Miner -w EQBiwPHAQjATUAgvhstqP4ke1aEvmwoCJKUrMGRaogtBnbX_ -b cuda-18 -F 2048 --exclude-gpus 1 -r linux
