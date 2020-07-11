# gd-utils的Docker版,快速搭建google drive 转存工具

**docker内包含:**
- 网页版shell,方便执行git pull等命令
- 文件管理器,方便上传sa文件以及编辑配置文件和备份数据库
- tg机器人,




# 使用方法:
gd-utils的Docker版,使用方法:

**80端口:** 文件管理

**4200端口:** webshell

**23333端口:** tg机器人

**持久化目录:** /gd-utils/sa/

**config.js已经软链到**`/gd-utils/sa/config.js`

```
docker run --restart=always  -d \
-e USERPWD="your_root_passsword" \
-p 4200:4200 \
-p 80:80 \
-p 23333:23333 \
--name gd-utils \
-v /gd-utils/sa:/root/sa \
gdtool/gd-utils-docker
```

## 原项目
[gd-utils](https://github.com/iwestlin/gd-utils)

## 相关项目(感谢这些开源项目)

[gd-utils](https://github.com/iwestlin/gd-utils)

[shellinabox](https://github.com/shellinabox/shellinabox)

[filebrowser](https://github.com/filebrowser/filebrowser/)

## 脚本参考

[iouAkira](https://github.com/iouAkira/someDockerfile)

[mics8128](https://github.com/mics8128/gd-utilds-docker)
