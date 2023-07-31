# https://registry.terraform.io/providers/hashicorp/helm/0.10.6/docs
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
