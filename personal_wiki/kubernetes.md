# Kubernetes

### Limits vs Requests
[https://sysdig.com/blog/kubernetes-limits-requests/#:~:text=The sum of all the memory limits can,be higher than 4 GiB](https://sysdig.com/blog/kubernetes-limits-requests/#:~:text=The%20sum%20of%20all%20the%20memory%20limits%20can,be%20higher%20than%204%20GiB).

### Kubectl set resource
[https://www.mankier.com/1/kubectl-set-resources](https://www.mankier.com/1/kubectl-set-resources)

## Cluster autoscaler
[https://docs.aws.amazon.com/eks/latest/userguide/cluster-autoscaler.html](https://docs.aws.amazon.com/eks/latest/userguide/cluster-autoscaler.html)

[https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/FAQ.md#how-is-cluster-autoscaler-diffe](https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/FAQ.md#how-is-cluster-autoscaler-diffe)


### Horizontal Pod autoscaler

[https://github.com/kubernetes/kops/blob/master/docs/horizontal_pod_autoscaling.md](https://github.com/kubernetes/kops/blob/master/docs/horizontal_pod_autoscaling.md)

[https://github.com/kubernetes/kops/blob/master/addons/metrics-server/README.md](https://github.com/kubernetes/kops/blob/master/addons/metrics-server/README.md)


when installing metrics-server you should describe this:

```bash
kubectl describe apiservices.apiregistration.k8s.io v1beta1.metrics.k8s.io
```

Tool to see long from multiple pods

[https://github.com/wercker/stern](https://github.com/wercker/stern)

alternative command:

```bash
kubectl logs -f $(kubectl get pods | awk '/gateway/ {print $1;exit}') | grep ' 400 '
```

## To try


### Policy Agent

[https://www.openpolicyagent.org/](https://www.openpolicyagent.org/)

### Linkedr Mesh

[https://linkerd.io/](https://linkerd.io/)

