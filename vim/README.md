Update instructions

First install :

```
mkdir -p ~/.vim/bundle
```

from setup to local :

```
rsync -acviz --stats --delete-after ~/setup/vim/conf ~/.vim/
rsync -avciz --stats --delete-after ~/setup/vim/vimrc ~/.vimrc
```
