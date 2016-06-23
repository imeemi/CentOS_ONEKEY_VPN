CentOS 6.X下Shandowsocks、PPTP、L2TP的一键安装脚本
===============
使用方法详见http://kanmenshu.blogspot.jp/2016/06/centosshandowsockspptpl2tp.html


shadowsocks.sh
===============
* 修改自秋水逸冰的Shadowsocks-go一键安装脚本
* 将默认密码改为asdf1234
* 将默认端口改为大多数SS客户端使用的8388
* 选用Shadowsocks-go一键安装脚本是为了避免在某些VPS上安装Python版本时发生EZsetup错误，同时Shadowsocks-go还可配置多端口。


pptp.sh
===============
* 修改自linuxeye.com的CentOS 6、7下pptp vpn一键安装脚本
* 将首选DNS设为了Google的DNS8.8.8.8，添加了备选DNS8.8.4.4，并将阿里云等国内DNS注释掉
* 将默认用户名和密码从linuxeye修改为了vpn
* 将原来创建的用户只能使用PPTP登陆修改为同一用户名可以用PPTP和L2TP两种方式登陆


l2tp.sh
===============
* 修改自Leesec's Blog的一键安装L2TP VPN脚本
* 将EPEL库的安装方式改为yum方式
* 去掉了添加用户名和密码的步骤（可以用安装PPTP时创建的用户名及密码登录）
* 将默认PSK从fuck_great_firewall修改为123456
* 修改了ikelifetim等参数的值，解决windows连接1小时左右就断开的问题


vpnuser.sh
===============
* 这个脚本是我自己写的，用于添加VPN用户


Copyright (C) 2016 Kanmenshu
