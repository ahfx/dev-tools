# MACOS

## Bash

add the following to the .bashrc or .bash_profile
    
``` 
source ~/ahrc/.bash_aliases 
```

## Vscode

    mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json.bak
    ln -s ~/ahrc/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

## Vim

    ln -s ~/ahrc/vim/.vimrc ~/.vmrc

