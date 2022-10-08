# web3-workspace-images
 docker workspace images for web3 developing

1. based on ubuntu 22.04 from [workspaces-images/dockerfile-kasm-ubuntu-jammy-desktop](https://github.com/kasmtech/workspaces-images/blob/develop/dockerfile-kasm-ubuntu-jammy-desktop)
2. install some requirements for web3 developing

# name:tags
web3-workspace-images:ubuntu-22.04           base image
web3-workspace-images:full-stack             frontend/chainend/etc


# PS
```shell
# ### 以下会议、办公软件，只安装在宿主机，不安装在docker开发环境的镜像里
# # Install NextCloud
# COPY ./src/ubuntu/install/nextcloud $INST_SCRIPTS/nextcloud/
# RUN bash $INST_SCRIPTS/nextcloud/install_nextcloud.sh  && rm -rf $INST_SCRIPTS/nextcloud/

# # Install Teams
# COPY ./src/ubuntu/install/teams $INST_SCRIPTS/teams/
# RUN bash $INST_SCRIPTS/teams/install_teams.sh  && rm -rf $INST_SCRIPTS/teams/

# # Install Discord
# COPY ./src/ubuntu/install/discord $INST_SCRIPTS/discord/
# RUN bash $INST_SCRIPTS/discord/install_discord.sh  && rm -rf $INST_SCRIPTS/discord/

# # Install Slack
# COPY ./src/ubuntu/install/slack $INST_SCRIPTS/slack/
# RUN bash $INST_SCRIPTS/slack/install_slack.sh  && rm -rf $INST_SCRIPTS/slack/

# # Install Only Office
# COPY ./src/ubuntu/install/only_office $INST_SCRIPTS/only_office/
# RUN bash $INST_SCRIPTS/only_office/install_only_office.sh  && rm -rf $INST_SCRIPTS/only_office/

# # Install Signal
# COPY ./src/ubuntu/install/signal $INST_SCRIPTS/signal/
# RUN bash $INST_SCRIPTS/signal/install_signal.sh  && rm -rf $INST_SCRIPTS/signal/

# # Install Zoom
# COPY ./src/ubuntu/install/zoom $INST_SCRIPTS/zoom/
# RUN bash $INST_SCRIPTS/zoom/install_zoom.sh  && rm -rf $INST_SCRIPTS/zoom/

# # Install Telegram
# COPY ./src/ubuntu/install/telegram $INST_SCRIPTS/telegram/
# RUN bash $INST_SCRIPTS/telegram/install_telegram.sh  && rm -rf $INST_SCRIPTS/telegram/

# # Install Thunderbird
# COPY ./src/ubuntu/install/thunderbird $INST_SCRIPTS/thunderbird/
# RUN bash $INST_SCRIPTS/thunderbird/install_thunderbird.sh  && rm -rf $INST_SCRIPTS/thunderbird/

# -- other --
# # Install Wine
# COPY ./src/ubuntu/install/wine $INST_SCRIPTS/wine/
# RUN bash $INST_SCRIPTS/wine/install_wine.sh  && rm -rf $INST_SCRIPTS/wine/

# # Install GIMP 图像处理
# COPY ./src/ubuntu/install/gimp $INST_SCRIPTS/gimp/
# RUN bash $INST_SCRIPTS/gimp/install_gimp.sh  && rm -rf $INST_SCRIPTS/gimp/

# # Install OBS Studio 录屏
# COPY ./src/ubuntu/install/obs $INST_SCRIPTS/obs/
# RUN bash $INST_SCRIPTS/obs/install_obs.sh  && rm -rf $INST_SCRIPTS/obs/
```