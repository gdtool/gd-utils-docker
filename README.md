# [gd-utils](https://github.com/iwestlin/gd-utils)的[Docker版](https://hub.docker.com/r/gdtool/gd-utils-docker),快速搭建google drive 转存工具


**docker内包含:**
- **网页版shell**:方便执行git pull等命令
- **文件管理器**,方便上传sa文件以及编辑配置文件和备份数据库
- **gd-utils机器人**
> 具体gd-utils教程请移步官网: [gd-utils](https://github.com/iwestlin/gd-utils)


# 注意:
为方便持久化,源代码的`/gd-utils/config.js` 和 ` /gd-utils/gdurl.sqlite` 已经软链接到目录`/gd-utils/sa/`

# 使用方法:
gd-utils的Docker版,使用方法:


**4200端口:** webshell,账号:`gd`,密码:`your_self_passsword`

**23333端口:** gd-utils机器人

**80端口:** 文件管理,**默认不启动**  **默认不启动**   **默认不启动**
> 启动方法:登录webshell;`su root` 然后执行`cd / && filebrowser &`,账号密码:admin

**持久化目录:** /gd-utils/sa/



```
docker run --restart=always  -d \
-e USERPWD="pwd123456" \
-p 4200:4200 \
-p 80:80 \
-p 23333:23333 \
--name gd-utils \
-v /root/sa:/gd-utils/sa \
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
