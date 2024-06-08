resource "aws_iam_role" "iam-role" {
  name               = "ECS-execution-role29"
  assume_role_policy = file("${path.module}/iam-role.json")
}