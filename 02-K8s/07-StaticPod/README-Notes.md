
kubectl -> API Server -> UP & Running 

kubectl run hello-k8s --image=nginx --port=80 


kubectl -> API Sever:6443 -> etcd -> hello-k8s (Already existing ) 
kubectl -> API Sever:6443 -> etcd -> hello-k8s-2  ( Doen't exist ) -> Update etcd ( Pod Description ) -> Scheduler -> etcd [Pod Need to be create by provider defination ] -> ectd [would you pleas let how many nodes avilable for scheduling {worker 1 & 2 } ] -> 

Selected -> worker 2 -> Catlog -> KubeAPI -> Kubelet [Catlog] -> Docker [image: nginx , port : 80]. 


-> kube-api 
-> etcd 
-> kube-schedler
-> kube-cantroller-manger 



StaticPOD -> 

Kubelet -> config.yaml [StaticPOD : /etc/kubernetes/mainfest/] [mypod.yaml ]

kubelet -> mypod.yaml -> docker -> container 

kubectl get nodes 
root@master:~/docker-k8s-ericsson-19-Sept-2022/02-K8s# kubectl  get pods
NAME                           READY   STATUS    RESTARTS   AGE
hello-k8s                      1/1     Running   0          16m
hello-k8s-worker2              1/1     Running   1          18m    ( StaticPOD ) 
hello-static-pod-k8s-worker2   1/1     Running   0          19m    ( StaticPOD )
helloworld-controller-s9wtj    1/1     Running   0          43m
helloworld-controller-w5t4t    1/1     Running   0          43m
helloworld-controller-xkcx8    1/1     Running   0          43m
root@master:~/docker-k8s-ericsson-19-Sept-2022/02-K8s#

