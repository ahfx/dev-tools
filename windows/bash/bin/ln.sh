#! /usr/bin/bash

# We still need this.
windows() { [[ -n "$WINDIR" ]]; }

# Cross-platform symlink function. With one parameter, it will check
# whether the parameter is a symlink. With two parameters, it will create
# a symlink to a file or directory, with syntax: link $linkname $target

target=${1}
source=${2}

if [[ -z "$target" ]]; then
    # Link-checking mode.
    if windows; then
        fsutil reparsepoint query "$source" > /dev/null
    else
        [[ -h "$source" ]]
    fi
else
    # Link-creation mode.
    if windows; then
        # Windows needs to be told if it's a directory or not. Infer that.
        # Also: note that we convert `/` to `\`. In this case it's necessary.
        # Also: mklink adds /c to to abs targets, strip '/c' if found so it's not duplicated

        if [[ $target == "/c"* ]]; then
            target=C:${target:2}
        fi
        if [[ $source == "/c"* ]]; then
            source=C:${source:2}
        fi
        if [[ -d "$2" ]]; then
            cmd <<< "mklink /D \"${source//\//\\}\" \"${target//\//\\}\"" > /dev/null
        else
            cmd <<< "mklink \"${source//\//\\}\" \"${target//\//\\}\"" > /dev/null
        fi
    else
        # You know what? I think ln's parameters are backwards.
        ln -s "$2" "$1"
    fi
fi
