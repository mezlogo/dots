export TERMINAL='alacritty'
export BROWSER='firefox --class FF_WORK -P work'
#export QT_AUTO_SCREEN_SCALE_FACTOR='1'
#export QT_SCALE_FACTOR='1'
#export GDK_SCALE=2
xrdb -merge ~/.Xresources
#xrdb -merge ~/.Xresources_monitor
exec i3
