Update instructions

First install :

```
mkdir -p ~/.vim/bundle
```

from local to setup :

```
rsync -acviz --stats --delete-after ~/.vim/conf/ ~/setup/vim/conf
rsync -avciz --stats --delete-after ~/.vimrc ~/setup/vim/vimrc
```

from setup to local :

```
rsync -acviz --stats --delete-after ~/setup/vim/conf ~/.vim/
rsync -avciz --stats --delete-after ~/setup/vim/vimrc ~/.vimrc
```
