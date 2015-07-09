Power line
cd~
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
mv PowerlineSymbols.otf ~/.local/share/fonts/
sudo fc-cache -f -v
get https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.config/fontconfig/fonts.conf
mv 10-powerline-symbols.conf ~/.config/fontconfig/fonts.conf/

git init
git remote add origin $url_of_clone_source
git fetch origin
git checkout -b master --track origin/master # origin/master is clone's default

Solarized theme
https://github.com/altercation/solarized

More powerline
http://computers.tutsplus.com/tutorials/getting-spiffy-with-powerline--cms-20740
