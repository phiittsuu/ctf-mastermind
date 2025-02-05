#! /bin/bash
# note: used for mac

### install brew ###
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

### install git + pipx + wget ###
brew install git
brew install pipx
brew install wget

### installing openssl + npm ###
brew install openssl
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
brew install npm

### main installation ###
#-- GUI --#
brew install iterm2 # optional, but imo better than default
brew install burp-suite
brew install owasp-zap
brew install ghidra
brew install wireshark

#-- other --#
brew install zsh
brew install nmap
brew install curl

brew isntall gobuster
brew install whatweb
brew install ftp
brew install openssl
brew install nikto
brew install wpscanteam/tap/wpscan
brew install metasploit
brew install exploitdb
brew install hashcat
brew install sambabrew install binwalk
brew install exiftool
brew install aircrack-ng
brew install hydra
brew install sqlmap
brew install john # without multicore

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
# install node.js #
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 22

# install jwt cracker #
npm install --global jwt-cracker

#-- hash identifier ---#
wget https://raw.githubusercontent.com/blackploit/hash-identifier/master/hash-id.py -O misc/hash-id.py
chmod +x misc/hash-id.py