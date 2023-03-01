resource "kubernetes_namespace" "redis" {
  metadata {
    name = var.redis_namespace
  }
}

resource "helm_release" "redis" {
  name       = var.redis_name
  repository = var.redis_repository
  chart      = var.redis_chart
  namespace  = var.redis_namespace

  set {
    name  = "controller.service.type"
    value = "NodePort"
  }
  set {
    name  = "controller.replicaCount"
    value = "2"
  }
  depends_on = [
    kubernetes_namespace.redis
  ]
}
