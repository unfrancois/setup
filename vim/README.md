Update instructions

First install :

```
mkdir -p ~/.vim/bundle
```

from setup to local :

```
rsync -e ssh -c -avz --stats --delete-after ~/setup/vim/conf ~/.vim/
rsync -e ssh -c -avz --stats --delete-after ~/setup/vim/vimrc ~/.vimrc
```
