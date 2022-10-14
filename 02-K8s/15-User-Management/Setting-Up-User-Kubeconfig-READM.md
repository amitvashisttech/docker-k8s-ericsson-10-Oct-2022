```
  459  cat /root/.kube/config
  460  kubectl config set-cluster kubernetes --server=https://172.31.0.100:6443 --certificate-authority=/etc/kubernetes/pki/ca.crt --embed-certs=true --insecure-skip-tls-verify=true --kubeconfig=amit.kubeconfig
  461  kubectl config set-cluster kubernetes --server=https://172.31.0.100:6443 --certificate-authority=/etc/kubernetes/pki/ca.crt --embed-certs=true  --kubeconfig=amit.kubeconfig
  462  ls
  463  cat amit.kubeconfig
  464  ls
  465  kubectl config set-cluster kubernetes --server=https://172.31.0.100:6443 --certificate-authority=/etc/kubernetes/pki/ca.crt --embed-certs=true  --kubeconfig=/home/vagrant/.kube/config
  466  cat /home/vagrant/.kube/config
  467  chown -R vagrant.vagrant /home/vagrant/.kube/config
  468  ls
  469  cat 10-User-Management/REDAME.md
  470  kubectl config set-credentials amit --client-certificate=/root/amit.crt --client-key=/root/amit.pemkubectl config set-context amit@kubernetes --cluster=kubernetes --user=amit
  471  ls
  472  cat amit.kubeconfig
  473  ls
  474  kubectl  apply -f 11-RBAC/04-Cluster-Admin-Clusterbinding-amit.yaml
  475  ls
  476  cat amit.kubeconfig
  477  ls
  478  kubectl config set-credentials amit --client-certificate=/home/vagrant/vagrant.crt --client-key=/home/vagrant/vagrant.pem --kubeconfig=amit.kubeconfig --embed-certs=true
  479  cat amit.kubeconfig
  480  kubectl config set-context amit@kubernetes --cluster=kubernetes --user=amit --kubeconfig=amit.kubeconfig
  481  kubectl config use-context amit@kubernetes --kubeconfig=amit.kubeconfig
  482  ls
  483  cat amit.kubeconfig

```
