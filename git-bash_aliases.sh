
windows() { [[ -n "$WINDIR" ]]; }

# fix command line tools for git-bash on windows
if windows; then
    alias python='winpty python.exe';
    alias mysql='winpty mysql.exe';
fi;