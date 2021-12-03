
eksctl create cluster -f cluster.yaml

eksctl create iamserviceaccount \
  --cluster=redis \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --attach-policy-arn=arn:aws:iam::164382793440:policy/AWSLoadBalancerControllerIAMPolicy \
  --override-existing-serviceaccounts \
  --approve

helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=gran \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller 

k apply -f kubernetes-manifests/

k apply -f daemonset_gagent.yaml