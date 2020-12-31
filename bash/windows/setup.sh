
home=~
dir=${home}/ahrc/bash/windows

source ${dir}/env.sh

${dir}/bin/ln.sh ${dir}/.bash_profile ${home}/.bash_profile
${dir}/bin/ln.sh ${dir}/.bashrc ${home}/.bashrc
${dir}/bin/ln.sh ${dir}/.bash_aliases ${home}/.bash_aliases
