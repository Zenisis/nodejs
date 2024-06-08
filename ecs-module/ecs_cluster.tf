
resource "aws_ecs_cluster" "main" {
  name = "cluster1"
  tags = {
    Name= "white_collor"
  }
}
