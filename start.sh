#!bin/bash
#添加gd账号,设置密码
adduser  gd -u 20001 -D -S -s /bin/bash -G root
echo -e "${USERPWD}\n${USERPWD}" | passwd root
echo -e "${USERPWD}\n${USERPWD}" | passwd gd
chmod 4755 /bin/busybox
#免登陆:/gd-utils/sa/shellinaboxd --no-beep -t  --service "/:root:root:/:/bin/bash" &
/gd-utils/sa/shellinaboxd --no-beep -t -s "/:LOGIN"  &
filebrowser   &
node /gd-utils/server.js
