```
 702  cd 10-RBAC/
  703  ls
  704  vim /etc/kubernetes/manifests/kube-apiserver.yaml
  705  ls
  706  kubectl get pods
  707  kubectl config get-contexts
  708  kubectl config use-context kubernetes-admin@kubernetes
  709  s
  710  kubectl get pods
  711  kubectl get roles
  712  kubectl get rolebindings
  713  kubectl create role pod-reader --help
  714  kubectl create role pod-reader  --verb=get,list,watch --resource=pods,secrets,deployment --dry-run
  715  kubectl create role pod-reader  --verb=get,list,watch --resource=pods,secrets,deployment --dry-run > 01-Pod-Reader-Role.yaml
  716  ls
  717  cat 01-Pod-Reader-Role.yaml
  718  kubectl create role pod-reader  --verb=get,list,watch --resource=pods,secrets,deployment --dry-run -o yaml > 01-Pod-Reader-Role.yaml
  719  cat 01-Pod-Reader-Role.yaml
  720  kubectl api-resources
  721  ls
  722  kubectl  apply -f 01-Pod-Reader-Role.yaml
  723  kubectl  get roles
  724  kubectl  describe roles
  725  kubectl create rolebinding pod-reader-binding-amit --help
  726  kubectl create rolebinding pod-reader-binding-amit --user=amit --dry-run
  727  kubectl create rolebinding pod-reader-binding-amit --role=pod-reader --user=amit --dry-run
  728  kubectl create rolebinding pod-reader-binding-amit --role=pod-reader --user=amit --dry-run -o ayml
  729  kubectl create rolebinding pod-reader-binding-amit --role=pod-reader --user=amit --dry-run -o yaml
  730  kubectl create rolebinding pod-reader-binding-amit --role=pod-reader --user=amit --dry-run -o yaml > 02-Pod-Reader-RoleBinding-Amit.yaml
  731  ls
  732  cat 02-Pod-Reader-RoleBinding-Amit.yaml
  733  kubectl  apply -f 02-Pod-Reader-RoleBinding-Amit.yaml
  734  kubectl  get roles
  735  kubectl  get rolebindings
  736  kubectl config get-contexts
  737  kubectl config use-context amit@kubernetes
  738  kubectl get pods
  739  kubectl get secrets
  740  kubectl get deployment
  741  kubectl get rc
  742  kubectl get secrets
  743  kubectl  get pods
  744  kubectl  delete pod hello-k8s
  745  kubectl config get-contexts
  746  kubectl config use-context amit-myspace2@kubernetes
  747  kubectl get pods
  748  kubectl config use-context amit@kubernetes
  749  kubectl get pods
  750  kubectl get pods -n kube-system
  751  kubectl get pods -n myspace2
  752  kubectl  get pods -w
  753  kubectl config get-contexts
  754  kubectl config use-context kubernetes-admin@kubernetes
  755  kubectl  get pods -w
  756  kubectl auth can-i  get pods
  757  kubectl auth can-i  delete pods
  758  kubectl auth can-i  delete pods -n kube-system
  759  kubectl auth can-i  get pods --user=amit
  760  kubectl auth can-i  delete pods --user=amit
  761  kubectl auth can-i  get pods --user=amit -n kube-system
  762  kubectl get roles
  763  kubectl get clusterroles
  764  kubectl describe clusterroles  view
  765  kubectl create clusterrolebinding cluster-viewer-binding-amit --clusterrole=view --user=amit --dry-run
  766  kubectl create clusterrolebinding cluster-viewer-binding-amit --clusterrole=view --user=amit --dry-run -o yaml > 03-Cluster-Viewer-Binding-Amit.yaml
  767  ls
  768  cat 03-Cluster-Viewer-Binding-Amit.yaml
  769  kubectl  apply -f 03-Cluster-Viewer-Binding-Amit.yaml
  770  kubectl get clusterrolebindings
  771  history
  772  kubectl auth can-i  get pods,deploy,rc,pvc,pv,configmap,secrets --user=amit --all-namespaces
  773  kubectl auth can-i  get deploy --user=amit --all-namespaces
  774  kubectl auth can-i  get configmap --user=amit --all-namespaces
  775  kubectl auth can-i  get svc --user=amit --all-namespaces
  776  kubectl auth can-i  delete svc --user=amit --all-namespaces
  777  kubectl  delete -f 03-Cluster-Viewer-Binding-Amit.yaml
  778  kubectl  get clusterrole
  779  kubectl create clusterrolebinding cluster-admin-binding-amit --clusterrole=cluster-admin --user=amit --dry-run -o yaml > 04-Cluster-Admin-Binding-Amit.yaml
  780  kubectl  apply -f 04-Cluster-Admin-Binding-Amit.yaml
  781  kubectl auth can-i  delete svc --user=amit --all-namespaces
  782  kubectl auth can-i  delete secrets  --user=amit --all-namespaces
  783  kubectl auth can-i  delete pods   --user=amit --all-namespaces
  784  kubectl config get-contexts
  785  kubectl config use-context amit-myspace2@kubernetes
  786  ls
  787  kubectl apply -f ../06-Deployments/
  788  ls
  789  kubectl  get deplot
  790  kubectl  get deploy
  791  kubectl  get deploy,pods
  792  kubectl  get pods --all-namespaces
  793  kubectl config get-contexts
  794  ls
  795  kubectl  apply -f 03-Cluster-Viewer-Binding-Amit.yaml
  796  kubectl get rolebindings
  797  kubectl get clusterrolebindings

```
