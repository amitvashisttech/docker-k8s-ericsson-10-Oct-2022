## Let's create a Static POD. 

### Gernrate POD Defination with following command: 
```
kubectl  run hello-k8s --image=nginx --port=80 --dry-run -o yaml
```

### Please this defination on worker2 in /etc/kubernetes/mainfest/

### Check the Pod Status - you should be able to see your static pod append with worker node name to it. 

```
kubectl get nodes 
root@master:~/docker-k8s-ericsson-19-Sept-2022/02-K8s# kubectl  get pods
NAME                           READY   STATUS    RESTARTS   AGE
hello-k8s                      1/1     Running   0          16m
hello-k8s-worker2              1/1     Running   1          18m   ----> ( StaticPOD ) <----
hello-static-pod-k8s-worker2   1/1     Running   0          19m   ----> ( StaticPOD ) <----
```
