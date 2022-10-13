```  
  113  cd  02-K8s/
  114  ls
  115  cd 05-Deployments/
  116  ls
  117  vim helloworld.yaml 
  118  ls
  119  kubectl apply -f helloworld.yaml 
  120  kubectl get deploy 
  121  kubectl get rs 
  122  kubectl get pods
  123  kubectl expose deploy helloworld-deployment --type=NodePort
  124  kubectl get svc 
  125  kubectl  get deploy 
  126  kubectl  describe deploy helloworld-deployment
  127  kubectl set image deploy helloworld-deployment k8s-demo=amitvashist7/k8s-tiny-web:2
  128  kubectl  describe deploy helloworld-deployment
  129  kubectl set image deploy helloworld-deployment k8s-demo=amitvashist7/k8s-tiny-web:3
  130  kubectl  describe deploy helloworld-deployment
  131  kubectl rollout status deploy helloworld-deployment
  132  kubectl set image deploy helloworld-deployment k8s-demo=amitvashist7/k8s-tiny-web:4


  133  kubectl rollout status deploy helloworld-deployment
  134  kubectl rollout history deploy helloworld-deployment
  135  kubectl rollout history deploy helloworld-deployment --revision=4
  136  kubectl rollout history deploy helloworld-deployment --revision=3
  137  kubectl rollout history deploy helloworld-deployment --revision=2
  138  kubectl get rs 
  139  kubectl rollout history deploy helloworld-deployment 
  140  kubectl rollout undo deploy helloworld-deployment 
  141  kubectl rollout history deploy helloworld-deployment 
  142  kubectl rollout history deploy helloworld-deployment --revision=5
  143  kubectl rollout undo deploy helloworld-deployment 
  144  kubectl rollout history deploy helloworld-deployment 
  145  kubectl rollout undo deploy helloworld-deployment 
  146  kubectl rollout history deploy helloworld-deployment 
  147  kubectl rollout undo deploy helloworld-deployment --to-revision=2
  148  kubectl rollout history deploy helloworld-deployment 
  149  kubectl rollout history deploy helloworld-deployment --revison=8 
  150  kubectl rollout history deploy helloworld-deployment --revision=8 
  151  kubectl set image deploy helloworld-deployment k8s-demo=amitvashist7/k8s-tiny-web:4 --record 
  152  kubectl set image deploy helloworld-deployment k8s-demo=amitvashist7/k8s-tiny-web:3 --record 
  153  kubectl set image deploy helloworld-deployment k8s-demo=amitvashist7/k8s-tiny-web:2 --record 
  154  kubectl set image deploy helloworld-deployment k8s-demo=amitvashist7/k8s-tiny-web --record 
  155  kubectl rollout history deploy helloworld-deployment 
  160  history > README.md
```

```
  577  cd 02-K8s/
  579  cd 05-Deployments/
  581  kubectl get pods
  582  kubectl  describe deploy helloworld-deployment
  583  kubectl  get rs
  584  kubectl  describe rs helloworld-deployment-8459cbc5b4
  585  kubectl  describe deploy helloworld-deployment
  586  ls
  587  kubectl delete -f helloworld.yaml
  588  cp -rf /root/helloworld-v2.yaml .
  589  ls
  590  vim helloworld-v2.yaml
  591  kubectl  apply -f helloworld-v2.yaml
  592  kubectl set image deploy helloworld-2-deployment k8s-demo=amitvashist7/k8s-tiny-web:3 --record
  593  kubectl set image deploy helloworld-2-deployment k8s-demo=amitvashist7/k8s-tiny-web:4 --record
  594  kubectl set image deploy helloworld-3-deployment k8s-demo=amitvashist7/k8s-tiny-web:2 --record
  595  kubectl set image deploy helloworld-3-deployment k8s-demo=amitvashist7/k8s-tiny-web:3 --record
```
