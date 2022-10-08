# Full stack for web3
FROM dennischancs/web3-workspace-images:ubuntu-22.04

USER root

######### Customize Container Here ###########
# 1. 换国内源
RUN sed -i 's/\/\/.*ubuntu.com/\/\/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# 2. 安装ibus+拼音/五笔码表。不安装sogou，fcitx等，均与xfce兼容性不佳
RUN apt update && apt install ibus ibus-pinyin ibus-table-wubi ibus-table-emoji \
    && echo 'export GTK_IM_MODULE="ibus"' >> $HOME/.bashrc \
    && echo 'export QT_IM_MODULE="ibus"' >> $HOME/.bashrc \
    && echo 'export XMODIFIERS="@im=ibus"' >> $HOME/.bashrc
# ibus-setup -> 缺省的ctrl+space会被主机拦截，改为ctrl+alt+space即可

######### END Customize Container ###########

RUN $STARTUPDIR/set_user_permission.sh $HOME

RUN chown 1000:0 $HOME

ENV HOME /home/kasm-user
WORKDIR $HOME
RUN mkdir -p $HOME && chown -R 1000:0 $HOME

USER 1000
ENTRYPOINT ["start.sh"]
CMD ["--tail-log"]
