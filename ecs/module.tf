

# ECS Fargate Terraform Module

module "ecs_fargate" {
  source                   = "./ecs/ecs-module"
  region                   = "eu-north-1"
  vpc_cidr_block           = "10.1.0.0/16"
  public_subnet1           = "10.1.1.0/24" 
  public_subnet2           = "10.1.2.0/24"
  availability_zones       = ["eu-north-1a" ,"eu-north-1b"]
  ecs_cluster_name         = "my-cluster"
  service_name             = "my-service"
  container_name           = "main-container"
  container_image          = "kartik2311/hello-world:latest"
  container_port           = 80
  cpu                      = 1024
  memory                   = 2048
  desired_count            = 2
  security_group           = "advance_sec"
  task_execution_role_arn = "aws_iam_role.iam-role.arn"


}


output "lb_dns_name" {
  value = module.ecs_fargate.lb_dns_name
}
