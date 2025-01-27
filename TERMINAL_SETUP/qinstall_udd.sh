#! /bin/bash
# note: used for ubuntu, debian and derivatives
# may need to change apt to apt-get - uncomment version you need

###--- apt ---###
# (apt apt uh uh-huh uh-huh)
### install git + pipx + wget ###
apt install git
apt install pipx
apt install wget

### main installation ###
#-- GUI --#
apt install iterm2 # optional, but imo better than default
apt install burp-suite
apt install owasp-zap
apt install ghidra
apt install wireshark

#-- other --#
apt install zsh
apt install nmap
apt install curl

apt isntall gobuster
apt install whatweb
apt install ftp
apt install openssl
apt install nikto
apt install wpscanteam/tap/wpscan
apt install metasploit
apt install exploitdb
apt install hashcat
apt install sambabrew install binwalk
apt install exiftool
apt install aircrack-ng
apt install hydra
apt install sqlmap
apt install john # without multicore

#-- git repo --#
git clone https://github.com/ShawnDEvans/smbmap.git /usr/local/Cellar/smbmap && python3 -m pip install -r /usr/local/Cellar/smbmap/requirements.txt && ln -s /usr/local/Cellar/smbmap/smbmap.py /usr/local/bin/smbmap
git clone https://github.com/CiscoCXSecurity/enum4linux.git /usr/local/Cellar/enum4linux && ln -s /usr/local/Cellar/enum4linux/enum4linux.pl /usr/local/bin/enum4linux

#-- pipx --#
pipx install crackmapexec
pipx install git+https://github.com/calebstewart/pwncat.git

### wordlists ###
# note: install it where you like (e.g. /usr/share/)
cd /usr/local/share # choose dir

#-- rockyou.txt --#
git clone https://github.com/3ndG4me/KaliLists.git /usr/local/share/wordlists && gzip -d /usr/local/share/wordlists/rockyou.txt.gz
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O /tmp/master.zip ; unzip /tmp/master.zip -d /tmp ; mv /tmp/SecLists-master /tmp/seclists ; mv /tmp/seclists /usr/local/share/

### other tools ###
#-- jwt cracker --#
mkdir -p jwt/jwt-cracker
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/Makefile -O jwt/jwt-cracker/Makefile
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/base64.c -O jwt/jwt-cracker/base64.c
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/base64.h -O jwt/jwt-cracker/base64.h
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/main.c -O jwt/jwt-cracker/main.c
cd jwt/jwt-cracker && make OPENSSL=/usr/local/opt/openssl/include OPENSSL_LIB=-L/usr/local/opt/openssl/lib && cd ../../

#-- hash identifier ---#
wget https://raw.githubusercontent.com/blackploit/hash-identifier/master/hash-id.py -O misc/hash-id.py
chmod +x misc/hash-id.py


###--- apt-get ---###
: <<'END'
### install git + pipx + wget ###
apt-get install git
apt-get install pipx
apt-get install wget

### main installation ###
#-- GUI --#
apt-get install iterm2 # optional, but imo better than default
apt-get install burp-suite
apt-get install owasp-zap
apt-get install ghidra
apt-get install wireshark

#-- other --#
apt-get install zsh
apt-get install nmap
apt-get install curl

apt-get isntall gobuster
apt-get install whatweb
apt-get install ftp
apt-get install openssl
apt-get install nikto
apt-get install wpscanteam/tap/wpscan
apt-get install metasploit
apt-get install exploitdb
apt-get install hashcat
apt-get install sambabrew install binwalk
apt-get install exiftool
apt-get install aircrack-ng
apt-get install hydra
apt-get install sqlmap
apt-get install john # without multicore

#-- git repo --#
git clone https://github.com/ShawnDEvans/smbmap.git /usr/local/Cellar/smbmap && python3 -m pip install -r /usr/local/Cellar/smbmap/requirements.txt && ln -s /usr/local/Cellar/smbmap/smbmap.py /usr/local/bin/smbmap
git clone https://github.com/CiscoCXSecurity/enum4linux.git /usr/local/Cellar/enum4linux && ln -s /usr/local/Cellar/enum4linux/enum4linux.pl /usr/local/bin/enum4linux

#-- pipx --#
pipx install crackmapexec
pipx install git+https://github.com/calebstewart/pwncat.git

### wordlists ###
# note: install it where you like (e.g. /usr/share/)
cd /usr/local/share # choose dir

#-- rockyou.txt --#
git clone https://github.com/3ndG4me/KaliLists.git /usr/local/share/wordlists && gzip -d /usr/local/share/wordlists/rockyou.txt.gz
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O /tmp/master.zip ; unzip /tmp/master.zip -d /tmp ; mv /tmp/SecLists-master /tmp/seclists ; mv /tmp/seclists /usr/local/share/

### other tools ###
#-- jwt cracker --#
mkdir -p jwt/jwt-cracker
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/Makefile -O jwt/jwt-cracker/Makefile
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/base64.c -O jwt/jwt-cracker/base64.c
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/base64.h -O jwt/jwt-cracker/base64.h
wget https://raw.githubusercontent.com/brendan-rius/c-jwt-cracker/master/main.c -O jwt/jwt-cracker/main.c
cd jwt/jwt-cracker && make OPENSSL=/usr/local/opt/openssl/include OPENSSL_LIB=-L/usr/local/opt/openssl/lib && cd ../../

#-- hash identifier ---#
wget https://raw.githubusercontent.com/blackploit/hash-identifier/master/hash-id.py -O misc/hash-id.py
chmod +x misc/hash-id.py
END