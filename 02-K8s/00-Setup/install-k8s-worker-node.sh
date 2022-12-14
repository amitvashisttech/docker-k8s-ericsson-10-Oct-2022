#!/bin/bash
echo "******************* Installing docker ********************"
sleep 2 
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"
apt-get update && apt-get install -y docker-ce=$(apt-cache madison docker-ce | grep 17.03 | head -1 | awk '{print $3}')

echo "********************* Installing kubeadm and kubectl *****************************"
apt-get update && apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
#apt-get remove -y  kubelet=1.24.0-00 kubeadm=1.24.0-00 kubectl=1.24.0-00
apt-get install -y  kubelet=1.21.0-00 kubeadm=1.21.0-00 kubectl=1.21.0-00
