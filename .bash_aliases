

function s3-push {
	aws s3 sync $1 s3://$2
}

function s3-pull {
	aws s3 sync s3://$1 $2
}

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	source ~/adh-prefs/.ubuntu_bash_aliases
elif [[ "$OSTYPE" == "darwin"* ]]; then
	source ~/adh-prefs/.mac_bash_aliases
fi


export AWS_REGION=us-east-1

# list the size of files in the current directory                                                                                     
alias sizes="du -hs * | sort -h"
