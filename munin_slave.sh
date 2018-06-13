apt-get -y install munin-node 
sed 's:#host_name localhost.localdomain:#host_name localhost.localdomain\nhost_name soulmunin\nallow ^43\.224\.34\.171$:g' /etc/munin/munin-node.conf
service munin-node restart
systemctl restart munin-node.service
