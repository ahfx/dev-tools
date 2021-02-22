
alias sublime='/opt/sublime_text_3/sublime_text'

# docker
alias docker-clean-dangling-images="sudo docker rmi $(sudo docker images -f "dangling=true" -q)"

# list the size of files in the current directory
alias sizes="du -hs * | sort -h"

# aws
alias aws="sudo docker run --rm -it amazon/aws-cli:latest"