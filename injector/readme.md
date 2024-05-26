
### Annotate Pods for Injection
You can now annotate pods in any namespace to use the Vault Agent Injector. Here's an example of a pod annotation:

```
apiVersion: v1
kind: Pod
metadata:
  name: example-pod
  namespace: your-namespace
  annotations:
    vault.hashicorp.com/agent-inject: "true"
    vault.hashicorp.com/role: "injector-role"
    vault.hashicorp.com/agent-inject-secret-<SECRET_PATH>: "<VAULT_PATH>"
spec:
  serviceAccountName: example-sa
  containers:
  - name: example-container
    image: nginx
```