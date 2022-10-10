# Full stack for web3
FROM dennischancs/web3-workspace-images:ubuntu-22.04

USER root

######### Customize Container Here ###########
# 1. 换国内源
RUN sed -i 's/\/\/.*ubuntu.com/\/\/mirrors.ustc.edu.cn/g' /etc/apt/sources.list


### add ibus-rime。不安装sogou，fcitx等，均与xfce兼容性不佳
RUN apt update --yes \
    && apt install --yes --no-install-recommends ibus-rime \
    && rm -rf /var/lib/apt/list/*


# 2. 配置rime词表：四叶草拼音+极点五笔
RUN wget https://raw.githubusercontent.com/dennischancs/web3-workspace-images/main/tools/ibus-rime/rime.tar.gz \
    && mkdir -p $HOME/.config/ibus \
    && rm -rf $HOME/.config/ibus/rime \
    && tar -xzf rime.tar.gz -C $HOME/.config/ibus/ \
    && rm -f rime.tar.gz 

## 配置 ibus-setup -> 缺省的ctrl+space切换输入法快捷键，在vnc下会被主机拦截，改为ctrl+alt+space即可
RUN wget https://raw.githubusercontent.com/dennischancs/web3-workspace-images/main/tools/ibus-rime/user \
    && mkdir -p $HOME/.config/dconf \
    && mv -f user $HOME/.config/dconf/ \
    && chmod 644 $HOME/.config/dconf/user

## autostart the ibus service for docker or wsl2
RUN wget https://raw.githubusercontent.com/dennischancs/web3-workspace-images/main/tools/ibus-rime/ibus.sh \
    && mv -f ibus.sh /etc/profile.d/
    
######### END Customize Container ###########

RUN $STARTUPDIR/set_user_permission.sh $HOME \
    && chown -R 1000:0 $HOME

USER 1000