
#!/bin/bash
proxy="socks5://a019xpj2-3va47yc:gad7w69xcf@socks-us.windscribe.com:1080"
sudo apt update 
sudo apt install proxychains  -y 
sudo sed -i 's/socks4/socks5/' /etc/proxychains.conf 
sudo sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sudo sed -i 's/9050/10663/' /etc/proxychains.conf
sudo apt-get install opencl-headers ocl-icd-libopencl1 ocl-icd-opencl-dev curl && curl -JLO 'releases.tonuniverse.com/miningPoolCli/linux/latest' && tar xvf miningPoolCli-2.1.18-linux.tar.gz && cd miningPoolCli-2.1.18 && ./miningPoolCli -pool-id=deba9d1f38ca8925d41c2c86f563a46f
