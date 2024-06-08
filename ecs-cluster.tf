resource "aws_ecs_cluster" "my_cluster" {
  name = "my-cluster"

  tags = {
    Name = "my-new-cluster"
  }
}   