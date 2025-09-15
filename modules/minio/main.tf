
resource "helm_release" "minio" {
  name       = "minio"
  namespace  = "minio"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "minio"
  version    = "14.6.18" # check latest stable version
  create_namespace = true

  values = [
    yamlencode({
      mode = "standalone" # or distributed

      auth = {
        rootUser     = "minioadmin"
        rootPassword = "minioadmin123" # ⚠️ replace with secret/variable
      }

      persistence = {
        enabled = true
        size    = "10Gi"
      }

      service = {
        type = "ClusterIP" # can be NodePort / LoadBalancer depending on infra
      }

      resources = {
        requests = {
          memory = "512Mi"
          cpu    = "250m"
        }
        limits = {
          memory = "2Gi"
          cpu    = "1000m"
        }
      }
    })
  ]
}
