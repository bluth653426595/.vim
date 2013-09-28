vim config file

0.rm -rf ~/.vim/
  rm -rf .vimrc

1.git clone  git@github.com:bluth653426595/.vim.git

2.cd ~/

3.ln -s .vim/.vimrc ~/.

4.Setup Vundle:

   git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
   
5. 配置plugin
   进vim
   ：BundleInstall

6.对于不想用的插件，先在.vimrc中注释，然后:BundleClean

> 6.git submodule init

> 7.git submodule update

> 8.sudo apt-get install ctags

> 9.cd ~/dde

> 10.ctags -R *

> 11. ctrl+shift+P 

> 12. pac install 

> 13. ctags

> 14.rebuild ctags
