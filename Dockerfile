# Full stack for web3
FROM dennischancs/web3-workspace-images:ubuntu-22.04

USER root

######### Customize Container Here ###########
# 1. 换国内源
RUN sed -i 's/\/\/.*ubuntu.com/\/\/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# 2. 安装ibus+rime拼音/五笔码表。不安装sogou，fcitx等，均与xfce兼容性不佳
RUN apt update --yes \
    && apt install --yes --no-install-recommends ibus ibus--rime \
    && echo 'export GTK_IM_MODULE="ibus"' >> $HOME/.bashrc \
    && echo 'export QT_IM_MODULE="ibus"' >> $HOME/.bashrc \
    && echo 'export XMODIFIERS="@im=ibus"' >> $HOME/.bashrc
# ibus-setup -> 缺省的ctrl+space会被主机拦截，改为ctrl+alt+space即可

COPY start.sh /usr/bin/start.sh
RUN chmod +x /usr/bin/start.sh

######### END Customize Container ###########

RUN $STARTUPDIR/set_user_permission.sh $HOME \
    && chown -R 1000:0 $HOME

USER 1000
# ENTRYPOINT ["/usr/bin/start.sh"]