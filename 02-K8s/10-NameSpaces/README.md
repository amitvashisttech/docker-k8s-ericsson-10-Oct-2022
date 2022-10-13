```
355  mkdir 06-NameSpaces
  356  ls
  357  cd 06-NameSpaces/
  358* kubectl  get ns
  359* kub
  360  kubectl  get ns
  361  kubectl  create ns myspace --dry-run -o yaml
  362  kubectl  create ns myspace --dry-run -o yaml > 01-Namespace.yaml
  363  ls
  364  cat 01-Namespace.yaml
  365  kubectl  apply -f 01-Namespace.yaml
  366  kubectl  get ns
  367  kubectl  run hello-k8s --image=nginx --port=80
  368  kubectl  run hello-k8s --image=nginx --port=80 -n myspace
  369  kubectl  get ns
  370  kubectl  get pods
  371  kubectl  get pods -n myspace
  372  kubectl  create rc  hello-rc --replicas=3 --image=nginx --port=80 --dry-run
  373  kubectl  create rc  hello-rc  --image=nginx --port=80 --dry-run
  374  kubectl  create rc  hello-rc --help
  375  kubectl  create rc  --help
  376  kubectl  create deploy hello-k8s-deploy --image=nginx --port=80 --replicas=3 -n myspace --dry-run -o yaml
  377  kubectl  create deploy hello-k8s-deploy --image=nginx --port=80 --replicas=3 -n myspace --dry-run -o yaml > 02-Deployment.yaml
  378  ls
  379  cat 02-Deployment.yaml
  380  kubectl  apply -f 02-Deployment.yaml
  381  kubectl  get pods
  382  kubectl  get pods -n myspace
  383  kubectl  get pods --all-namespaces
  384  kubectl  delete -f 01-Namespace.yaml
  385  kubectl  get pods --all-namespaces
```
