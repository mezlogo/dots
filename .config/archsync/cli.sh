#!/bin/env bash

echo "init ssh-daemon user service"
systemctl --user enable --now ssh-agent.service

echo "init tmux plugins"
if [[ "$TMUX" ]]; then
    /usr/share/tmux-plugin-manager/scripts/install_plugins.sh
    /usr/share/tmux-plugin-manager/scripts/update_plugin.sh all
fi

# echo "init default shell"
# current_shell="$(cat /etc/passwd | grep $USER | cut -d ':' -f7)"
# zsh_shell="$(which zsh)"
# if [ "$current_shell" != "$zsh_shell" ]; then
#     echo "current shell: [$current_shell] is not zsh: [$zsh_shell]"
#     chsh -s /usr/bin/zsh
# fi

echo "please do in by hand chsh -s /usr/bin/zsh"

chmod 700 "$HOME/.gnupg"

echo "init download dirs"
mkdir -p ~/downloads
ln -Tsf ~/downloads ~/Downloads
ln -Tsf ~/downloads ~/Desktop
ln -Tsf ~/downloads ~/Documents
