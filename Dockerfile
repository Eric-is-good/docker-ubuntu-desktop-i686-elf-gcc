# 基础镜像
FROM ericju/ubuntu-desktop:0.9

# 维护者信息
MAINTAINER eric <eric123456123456@163.com>

# 安装 gcc-i686

ADD gcc-build.sh /root/

ADD bochs-2.7.zip /root/

RUN chmod +777 gcc-build.sh

RUN apt-get -y update

RUN apt-get install sudo

RUN sudo bash ./gcc-build.sh

# 安装 gcc-i686 配置环境

RUN echo 'export PATH="/root/cross-compiler/bin:$PATH"' > ~/.bashrc

# RUN sudo source ~/.bashrc

# RUN i686-elf-gcc -dumpmachine

# 配置 bochs

RUN sudo apt-get install -y libsdl2-dev &&\
    sudo apt-get install -y libncurses5-dev &&\
    sudo apt-get install -y xorg-dev &&\
    sudo apt-get install -y libgtk2.0-dev

RUN unzip bochs-2.7.zip -d bochs-2.7

RUN ls

RUN chmod +777 bochs-2.7/bochs-build.sh

RUN cd bochs-2.7 &&\
    sudo bash ./bochs-build.sh

# 导出特定端口
EXPOSE 22 5900 3389 6001 6002 6003 6004 6005 6006 6007 6008 6009


