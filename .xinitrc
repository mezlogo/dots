export TERMINAL='alacritty'
export BROWSER='firefox --class FF_WORK -P work'
exec i3
systemctl --user import-environment DISPLAY && systemctl --user restart clipmenud.service
