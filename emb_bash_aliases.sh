#### Custom Bash Aliases and Scripts

xsetwacom --set "Wacom Intuos Pro M Finger touch" touch off

### DCC
alias h="houdini -n &"
alias h15="houdini15 -n"
alias h16="houdini16 -n"
alias n="nuke"

### SHOTS
alias si="~/dev/ahtools/cli/si/si.py"

alias killhou="killall houdini-bin"
alias killnuke="killall nuke-bin"
alias killrv="killall rv.bin"

### Internetz
alias f="/opt/firefox/firefox"

## Looking Around
alias l="ll -ahrt"
alias seqls="~/dev/ahtools/seqls/seqls.py"
alias lsotls="ll //proj/proj/Projects/*/pipeline/*/houdini/otls"
alias fcount="ls -1 | wc -l"
alias sizes="du -hs * | sort -h"

findcmd() {
	shopt -s extdebug
	declare -F $1
	shopt -u extdebug
}

llt() {
	for f in $(ls); do echo $f; ll -hrt $f/$1 | tail -$2; done
}

#re-alias to remove auto color
alias ll='ls -l'
alias ls='ls'

### Moving Around
cdh() {
	cd $EMB_SHOWSHOT/dyn/aharder/houdini
}
cdgeo() {
	cd $EMB_SHOWSHOT/dyn/aharder/geo
}
cdpsw() {
	cd $EMB_SHOWSHOT/../../../../pipeline/sw
}

### Misc
alias x="xkill"

cleanup() {
	python ~/dev/ahtools/cli/cleanup/cleanup.py $1 $2 $3
}

## Dev
alias v="vim"
alias t="tmux"
alias py="ipython"
#alias dev="source ~/dev/ahtools/ahdev/ahdev.sh;"
alias hdev="source ~/dev/ahtools/ahdev/ahdev.sh; h"
alias hydev="source ~/dev/ahtools/ahdev/ahdev.sh; hy"
alias s="/opt/local/sublime_text_3/sublime_text"
alias gitk="$APPSERVER/gitk"


dev() {
    echo $(python "$SW/bin/cds.py" $1 $2 $3)
    source ~/.embassyrc; cd $EMB_SHOWSHOT

    #add showenv
    IFS='/' read -a splits <<< "${EMB_SHOWSHOT}"
    show="${splits[5]}"
    showenv $show


	HOUVER='16.0'
	HOUBUILD='504.20'
	LOCALDIR='//proj/proj/Users/aharder'

	export EMB_APP_HOUDINI="$APPSERVER/hfs"$HOUVER"."$HOUBUILD"/bin/houdini"
	export EMB_DEV_HOU_PYTHONPATH=$LOCALDIR"/dev/repo/lib/python:"$LOCALDIR"/dev/repo/houdini/python"
	export EMB_DEV_OTLSCAN_PATH=$LOCALDIR"/dev/repo/houdini/houdini"$HOUVER"/otls"

	export HSITE=$LOCALDIR"/dev/repo/houdini"

    export PS1="[\u@\h \w] \[\033[47m\]\[\033[30m\]($EMB_SHOW $EMB_SEQ $EMB_SHOT) (DEV)\[\033[00m\]:"

    cd ~/dev/repo

}
