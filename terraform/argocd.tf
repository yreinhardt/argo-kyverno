# helm repo add argo https://argoproj.github.io/argo-helm
# helm repo update argo
# helm install argocd -n argocd --create-namespace argo/argo-cd --version 5.41.2 -f terraform/values/argocd.yaml
# helm show values argo/argo-cd --version 5.41.2 > ~/Desktop/gitops_kyverno/terraform/values/argocd_default_vals.yaml

# https://registry.terraform.io/providers/hashicorp/helm/0.10.6/docs/resources/release
resource "helm_release" "argocd" {
  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "5.41.2"

  values = [file("values/argocd_vals.yaml")]
}
