output "grafana_id" {
    description = "Id of the deployed helm chart" 
    value = module.grafana.id
}

output "redis_id" {
    description = "Id of the deployed helm chart" 
    value = module.redis.id
}