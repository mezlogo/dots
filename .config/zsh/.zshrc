source "$ZDOTDIR/aliases.sh"
source "$ZDOTDIR/zshaliases.sh"
source "$ZDOTDIR/history.sh"
source "$ZDOTDIR/options.sh"
source "$ZDOTDIR/plugins.sh"
source "$ZDOTDIR/keybinds.sh"
source "$ZDOTDIR/prompt.sh"

stty -ixon -ixoff
[ -e "$EXO/config/shell/sourceitrc.sh" ] && source "$EXO/config/shell/sourceitrc.sh"
