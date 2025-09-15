
resource "helm_release" "airflow" {
  name       = "airflow"
  namespace  = "airflow"
  repository = "https://airflow.apache.org"
  chart      = "airflow"
  version    = "1.15.0" # pick a stable chart version
  create_namespace = true

  atomic          = false   # prevents automatic rollback on timeout
  cleanup_on_fail  = true
  timeout         = 900     # 15 min, Airflow may take long to deploy

  values = [
    file("${path.module}/airflow-values.yaml")
  ]
}
