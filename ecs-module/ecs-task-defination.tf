resource "aws_ecs_task_definition" "td" {
  family                = "docker"
  requires_compatibilities = [ "FARGATE" ]
  execution_role_arn = aws_iam_role.iam-role.arn
  network_mode = "awsvpc"
  cpu = var.cpu
  memory = var.memory
  container_definitions = jsonencode([
    {
      name      =  var.container_name
      image     = var.container_image
      cpu       = var.cpu
      memory    = var.memory
      essential = true
      portMappings = [
        {
          containerPort = var.container_port

          hostPort      = var.container_port
        }
      ]


    }
  ])

  
}

data "aws_ecs_task_definition" "TD" {
  task_definition = aws_ecs_task_definition.td.family
}


































