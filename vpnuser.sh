#!/bin/bash
#
# Author: Kanmenshu
# Blog:  http://kanmenshu.blogger.com
#
# Setup a VPN user for CentOS
# Check if user is root
printf "
#######################################################################
#    LNMP/LAMP/LANMP for CentOS/RadHat 5+ Debian 6+ and Ubuntu 12+    #
#                   Setup a VPN user for CentOS                       #
#######################################################################
"
VPN_USER="vpn"
VPN_PASS="vpn"
while :; do echo
    read -p "Please input username: " VPN_USER
    [ -n "$VPN_USER" ] && break
done
while :; do echo
    read -p "Please input password: " VPN_PASS
    [ -n "$VPN_PASS" ] && break
done
clear
echo "$VPN_USER * $VPN_PASS *" >> /etc/ppp/chap-secrets
clear
echo -e "You can now connect to your VPN with your new account."
echo -e "Username: \033[32m${VPN_USER}\033[0m"
echo -e "Password: \033[32m${VPN_PASS}\033[0m"
echo -e "If you want to change it by yourself, please input \033[32mvi /etc/ppp/chap-secrets\033[0m."
