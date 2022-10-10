# [wsl2/ibus.md at master · eliranwong/wsl2](https://github.com/eliranwong/wsl2/blob/master/input_method/ibus.md)

export LC_CTYPE="zh_CN.UTF-8"
export XIM=ibus
export XIM_PROGRAM=/usr/bin/ibus
export QT_IM_MODULE="ibus"
export GTK_IM_MODULE="ibus"
export XMODIFIERS="@im=ibus"
export DefaultIMModule="ibus"
ibus-daemon -drx