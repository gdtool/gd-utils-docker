#!bin/bash
if [ ! -f "/gd-utils/sa/config.js" ];
then
 mv -f /gd-utils/config.js /gd-utils/sa/config.js
 ln -sf /gd-utils/sa/config.js /gd-utils/config.js
else
 rm -rf /gd-utils/config.js
 ln -sf /gd-utils/sa/config.js /gd-utils/config.js
fi
if [ ! -f "/gd-utils/sa/gdurl.sqlite" ];
then
 mv -f /gd-utils/gdurl.sqlite /gd-utils/sa/gdurl.sqlite 
 ln -sf /gd-utils/sa/gdurl.sqlite /gd-utils/gdurl.sqlite
else
 rm -rf /gd-utils/gdurl.sqlite
 ln -sf /gd-utils/sa/gdurl.sqlite /gd-utils/gdurl.sqlite
fi
#添加gd账号,设置密码
adduser  gd -u 20001 -D -S -s /bin/bash -G root
echo -e "${USERPWD}\n${USERPWD}" | passwd root
echo -e "${USERPWD}\n${USERPWD}" | passwd gd
chmod 4755 /bin/busybox
node /gd-utils/server.js &
#免登陆:/gd-utils/sa/shellinaboxd --no-beep -t  --service "/:root:root:/:/bin/bash" &
/gd-utils/sa/shellinaboxd --no-beep -t --user root -s "/:LOGIN"  
#filebrowser默认不启动
#filebrowser   &
