Fresh install with Linux
sudo apt-get install vim<br />
sudo apt-get install zsh<br />
cd<br />
sudo apt-get install curl<br />
sudo apt-get install git<br />
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"<br />
cd<br />
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf<br />
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf<br />
mkdir ~/.fonts<br />
mv PowerlineSymbols.otf ~/.fonts/<br />
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists<br />
fc-cache -vf ~/.fonts/<br />
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/<br />

git init<br />
git remote add origin git@github.com:jbalestr42/vim-config.git<br />
git fetch origin<br />
git checkout -b master --track origin/master<br />

git submodule init<br />
git submodule update<br />
vim +PluginInstall +qall<br />
