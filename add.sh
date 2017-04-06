/etc/init.d/shadowsocks stop
cat /dev/null > /etc/shadowsocks.json
cat > /etc/shadowsocks.json<<-EOF
{
    "server":"0.0.0.0",
    "local_address":"127.0.0.1",
    "local_port":1080,
    "port_password":{
         "8000":"adsf1234",
         "8100":"asdf1234",
         "8200":"asdf1234",
         "8300":"asdf1234",
         "9000":"asdf1234"
    },
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}
EOF
/etc/init.d/shadowsocks start
