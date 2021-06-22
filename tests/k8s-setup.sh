kind create cluster --name bazel-rules
kubectl create namespace system-chartmuseum
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install chartmuseum --namespace system-chartmuseum -f tests/resources/chartmuseum/values.yaml stable/chartmuseum