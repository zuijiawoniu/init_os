## ubuntu add user
sudo su root
sudo adduser l3 #123
sudo vim /etc/sudoers #l3      ALL=(ALL:ALL) ALL 
sudo su l3

## init environment
sudo apt-get install openssl libssl-dev -y
pip install -U -r requirements.txt  -i https://pypi.doubanio.com/simple --trusted-host pypi.doubanio.com


## sougou input method
wget http://cdn2.ime.sogou.com/dl/index/1491565850/sogoupinyin_2.1.0.0086_amd64.deb?st=re4c0Cotx8WamA_4zXrlVg&e=1499798293&fn=sogoupinyin_2.1.0.0086_amd64.deb
sudo dpkg -i sogoupinyin_2.1.0.0086_amd64.deb
sudo apt-get install -f


## install git & git clone & git pull
sudo apt-get install git -y
ssh-keygen -t rsa -y 
cat ~/.ssh/id_rsa.pub;
git config --global user.name "zuijiawoniu"	 
git config --global user.email "zuijiawoniu@163.com"

workdir=~/workspace;
mkdir -p $workdir;cd $workdir
for line in `cat git.list`; do
    if [ ! -d $line ]; then
        count=$(($count+1));
        echo "================================================================"
        echo "===Now $count: clone $line===";
        echo "================================================================"
	git clone https://github.com/zuijiawoniu/$line.git
    fi
done
cd $workdir; sh update_git.sh


## fish shell, sublime3
sudo apt-get install fish -y
#fish; fish_config
chsh -s /usr/bin/fish 


## sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install  sublime-text-installer -y
:<<! add sublime text3 license
!


#qt
wget http://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run
sudo chmod +x qt-opensource-linux-x64-5.7.0.run
./qt-opensource-linux-x64-5.7.0.run
sudo apt-get install build-essential -y;
sudo apt-get install freeglut3-dev -y;
sudo apt-get install libgles2-mesa-dev -y; #引用时用-lGLESv2
sudo apt-get install libfreetype6-dev -y;


#docker
sudo apt-get install linux-image-extra-$(uname -r)  linux-image-extra-virtual
sudo apt-get install apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo docker images
sudo docker run -d -p 8888:8888 docker.paddlepaddle.org/book:0.10.0; # about 2GB


#mysql
sudo apt-get install mysql-server-5.6 -y #service mysql start
sudo apt-get install libmysqld-dev -y
mysqladmin -uroot password rrrr
#mysqldump & import
#mysqldump -uroot -p db_test tb_test >a.sql
#mysql -ul3 -p db_test <a.sql


#mongo
sudo apt-get install mongodb -y #service mongodb restart
