if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	ln -sf ~/.config/sublime-text-3/Packages/User/Terminus.sublime-settings ~/ahrc/sublime/Terminus.sublime-settings
elif [[ "$OSTYPE" == "darwin"* ]]; then
	ln -sf "~/Library/Application Support/Sublime Text 3/Packages/User/Terminus.sublime-settings" ~/ahrc/sublime/Terminus.sublime-settings
elif [[ -n "$WINDIR" ]]; then
	ln -sf ~${APPDATA}/Sublime Text 3/Packages/User/Terminus.sublime-settings ~/ahrc/sublime/Terminus.sublime-settings
fi
