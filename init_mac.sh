## computer
scutil --set HostName "R"	 
scutil --set ComputerName "r"

## install xcode dependency
xcode-select --install	

## brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap phinze/homebrew-cask
brew install brew-cask
brew update
brew install cmake gcc@4.8 gflags
brew install python jupyter caskroom/cask/pycharm-ce
brew install fish wget tree 
brew install ssdb mongodb mysql@5.5 
brew install caskroom/cask/postman caskroom/cask/sublime-text caskroom/cask/visual-studio-code
brew services restart mongodb

## init environment
# fish; fish_config
chsh -s /usr/local/bin/fish


## python
pip install -U -r requirements.txt  -i https://pypi.doubanio.com/simple --trusted-host pypi.doubanio.com


## install git & git clone & git pull
ssh-keygen -t rsa -y  
cat ~/.ssh/id_rsa.pub;
git config --global user.name "zuijiawoniu"	 
git config --global user.email "zuijiawoniu@163.com"


## sublime text 3
:<<! add sublime text3 license
!

#qt


#docker
brew install docker docker-machine docker-compose
brew cask install kitematic

sudo docker run hello-world
sudo docker images
sudo docker run -d -p 8888:8888 docker.paddlepaddle.org/book:0.10.0; # about 2GB


#mysql
mysqladmin -uroot password rrrrrr


#mongo
