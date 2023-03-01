module "grafana" {
    source      = "./modules/grafana"
    grafana_name        = var.grafana_name
    grafana_repository  = var.grafana_repository
    grafana_chart       = var.grafana_chart
    grafana_namespace   = var.grafana_namespace
}

module "redis" {
    source      = "./modules/redis"
    redis_name        = var.redis_name
    redis_repository  = var.redis_repository
    redis_chart       = var.redis_chart
    redis_namespace   = var.redis_namespace

    depends_on = [
      module.grafana
    ]
}

resource "null_resource" "one-time" {
  triggers = {
    timestamp = local.timestamp
  }

  provisioner "local-exec" {
    when = create
    command = "rm -f top-* && top -b -n 2 > top-${self.triggers.timestamp}.txt"  
  }
}