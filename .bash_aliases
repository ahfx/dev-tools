

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	source ~/ahrc/bash/.bash_aliases_linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
	source ~/ahrc/bash/.bash_aliases_mac
elif [[ -n "$WINDIR" ]]; then
	source ~/ahrc/bash/.bash_aliases_windows
fi

# alias docker-clean-dangling-images="sudo docker rmi $(sudo docker images -f "dangling=true" -q)"

# list the size of files in the current directory
# alias sizes="du -hs * | sort -h"
