# 简介

在`ericju/ubuntu-desktop`（[这里](https://github.com/Eric-is-good/docker-ubuntu-desktop)）的基础上，安装 i686-elf-gcc 和 bochs，支持SSH和VNC远程连接

我用来搭建操作系统环境的，用于 bilibili [这个课](https://www.bilibili.com/video/BV1zv4y1g7J3/)

[![Docker Pulls](https://img.shields.io/docker/pulls/gotoeasy/ubuntu-desktop)](https://hub.docker.com/r/ericju/ubuntu-desktop)
[![GitHub release](https://img.shields.io/github/release/gotoeasy/docker-ubuntu-desktop.svg)](https://github.com/Eric-is-good/docker-ubuntu-desktop)

![](https://github.com/Eric-is-good/docker-ubuntu-desktop-i686-elf-gcc/blob/main/pics/1.jpg)



## **容器启动命令**

```shell
# 以后台方式运行容器，指定SSH和VNC端口，默认用户root，密码为123456
docker run -itd --privileged -p 22:22 -p 5901:5901 ericju/ubuntu-desktop-i686-elf-gcc:1.0

# 完整命令（暴露所有端口）
docker run -itd --privileged -p 22:22 -p 5900:5900 -p 5901:5901 -p 6000:6000 -p 6001:6001 -p 6002:6002 -p 6003:6003 -p 6004:6004 -p 6005:6005 -p 6006:6006 -p 6007:6007 -p 6008:6008 -p 6009:6009 ericju/ubuntu-desktop-i686-elf-gcc:1.0
```



## 容器使用前必须初始化

进入容器（docker attach [id]），运行 

```shell
./startup.sh
和
source ~/.bashrc 
```

![](https://github.com/Eric-is-good/docker-ubuntu-desktop-i686-elf-gcc/blob/main/pics/0.jpg)

然后就可以使用ssh，xftp 和 VNC可视化桌面了。

其中，VNC 连接地址为 ip:5901



获取 [VNC viewer](https://www.realvnc.com/en/connect/download/viewer/)