Quick and dirty way to spin up a cluster, deploy a model,
and deploy using seldon-core.  Works on x86 linux.
This assumes you have a basically clean host, and you don't care
about your current minikube install.

```bash
python -m pip install ansible
ansible-playbook minikube-seldon.yml
ansible-playbook model-deploy.yml
```

# Notes
1. Run `istioctl dashboard kiali` to see the kiali dashboard
2. Run `minikube tunnel --bind-address='*'` to expose the seldon-core istio ingress to your local.