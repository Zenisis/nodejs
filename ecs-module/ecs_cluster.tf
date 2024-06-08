
resource "aws_ecs_cluster" "main" {
  name = var.ecs_cluster_name
  tags = {
    Name= "white_collor"
  }
}

