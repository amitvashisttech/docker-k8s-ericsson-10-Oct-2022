## Set up load balancer node
##### Install Haproxy
```
apt update && apt install -y haproxy
```
##### Configure haproxy
Append the below lines to **/etc/haproxy/haproxy.cfg**
```
frontend kubernetes-frontend
    bind 172.31.0.100:31007
    mode tcp
    option tcplog
    default_backend kubernetes-backend

backend kubernetes-backend
    mode tcp
    option tcp-check
    balance roundrobin
    server worker1 172.31.0.101:31007 check fall 3 rise 2
    server worker2 172.31.0.102:31007 check fall 3 rise 2
    server master 172.31.0.100:31007 check fall 3 rise 2
```
##### Restart haproxy service
```
systemctl restart haproxy
```
