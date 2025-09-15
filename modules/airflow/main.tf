
resource "helm_release" "airflow" {
  name       = "airflow"
  namespace  = "airflow"
  repository = "https://airflow.apache.org"
  chart      = "airflow"
  version    = "1.15.0" # pick a stable chart version
  create_namespace = true

  values = [
    file("${path.module}/airflow-values.yaml")
  ]
}
