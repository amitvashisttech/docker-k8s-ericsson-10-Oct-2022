```
  353  mv ../03-Replication-Cantroller/02-hello-deployment.yaml .
  354  ls
  355  kubectl apply -f  01-helloworld-rc.yaml
  356  ls
  357  vim 02-hello-deployment.yaml
  358  kubectl  describe pod helloworld-deployment-9bb9467cc-54swj
  359  kubectl  get nodes --show-labels
  360  kubectl  label node worker2 hardware=virtual
  361  kubectl  get nodes --show-labels
  362  kubectl  describe pod helloworld-deployment-9bb9467cc-54swj
  363  kubectl  scale --replicas=7 -f 02-hello-deployment.yaml
  364  kubectl  scale --replicas=2 -f 02-hello-deployment.yaml
  365  kubectl  label node worker1 hardware=virtual
  366  kubectl  scale --replicas=3 -f 02-hello-deployment.yaml
  367  kubectl  scale --replicas=5 -f 02-hello-deployment.yaml
  368  ls
  369  kubectl  delete -f 02-hello-deployment.yaml
  370  ls
  371  cp -rf 02-hello-deployment.yaml 03-hello-deployment-multi.yaml
  372  ls
  373  vim 03-hello-deployment-multi.yaml
  374  kubectl  apply -f 03-hello-deployment-multi.yaml
  375  kubectl  label node worker1 env=prod
  376  kubectl  get nodes --show-labels
  377  kubectl  label node worker1 env-
  378  kubectl  label node worker1 hardware-
  379  kubectl  scale --replicas=5 -f 03-hello-deployment-multi.yaml
  380  kubectl  get nodes --show-labels
  381  kubectl  label node worker2 hardware-
```


```
 watch -n .5 kubectl get pods -o wide
```

