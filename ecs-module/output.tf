output "cluster_id" {
  value = aws_ecs_cluster.main.id
}

output "service_id" {
  value = aws_ecs_service.app1.id
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.td.arn
}

output "lb_dns_name" {
  value = aws_lb.lb.dns_name
}


