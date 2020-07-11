# gd-utils的Docker版,快速搭建google drive 转存工具

**docker内包含:**
- **网页版shell**:方便执行git pull等命令
- **文件管理器**,方便上传sa文件以及编辑配置文件和备份数据库
- **gd-utils机器人**
> 具体gd-utils教程请移步官网: [gd-utils](https://github.com/iwestlin/gd-utils)




# 使用方法:
gd-utils的Docker版,使用方法:


**4200端口:** webshell,账号:`gd`,密码:`your_self_passsword`

**23333端口:** gd-utils机器人

**80端口:** 文件管理,**默认不启动**  **默认不启动**   **默认不启动**
> 启动方法:登录webshell;`su root` 然后执行`cd / && filebrowser &`,账号密码:admin

**持久化目录:** /gd-utils/

```
docker run --restart=always  -d \
-e USERPWD="your_self_passsword" \
-p 4200:4200 \
-p 80:80 \
-p 23333:23333 \
--name gd-utils \
-v /gd-utils:/root/gd-utils \
gdtool/gd-utils-docker
```
如果嫌webshell切换root麻烦,可使用root直接登录的docker **危险**:
```
docker run --restart=always  -d \
-e USERPWD="your_self_passsword" \
-p 4200:4200 \
-p 80:80 \
-p 23333:23333 \
--name gd-utils \
-v /gd-utils:/root/gd-utils \
gdtool/gd-utils-docker-autologin
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
