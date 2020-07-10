# gd-utils-Docker
gd-utils的Docker版,快速搭建google drive 转存工具



# 使用方法:
gd-utils的Docker版,使用方法:

80端口 文件管理

4200端口: wenshell

23333端口: tg机器人

`docker run --restart=always  -d \
-e USERPWD="3024-night" \
-p 4200:4200 \
-p 80:80 \
-p 23333:23333 \
--name gd-utils \
gdtool/gd-utils-docker
`

## 原项目
[gd-utils](https://github.com/iwestlin/gd-utils)

## 相关项目(感谢这些开源项目)

[gd-utils](https://github.com/iwestlin/gd-utils)

[shellinabox](https://github.com/shellinabox/shellinabox)

[filebrowser](https://github.com/filebrowser/filebrowser/)

## 脚本参考

[iouAkira](https://github.com/iouAkira/someDockerfile)

[mics8128](https://github.com/mics8128/gd-utilds-docker)
