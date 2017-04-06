rm -f /etc/shadowsocks.json
cat > /etc/shadowsocks/config.json<<-EOF
{
    "server":"0.0.0.0",
    "server_port":9000,
    "local_port":1080,
    "password":"asdf1234",
    "method":"aes-256-cfb",
    "timeout":600
}
EOF
/etc/init.d/shadowsocks restart
