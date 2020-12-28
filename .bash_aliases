

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	source ~/adh-prefs/.bash_aliases_linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
	source ~/adh-prefs/.bash_aliases_mac
elif [[ -n "$WINDIR" ]]; then
	source ~/ahrc/.bash_aliases_windows
fi

function s3-push {
	aws s3 sync $1 s3://$2
}

function s3-pull {
	aws s3 sync s3://$1 $2
}

export AWS_REGION=us-east-1

# list the size of files in the current directory
alias sizes="du -hs * | sort -h"
