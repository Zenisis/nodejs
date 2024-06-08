terraform {
  backend "s3" {
    bucket = "nx1" # Replace with your actual S3 bucket name
    key    = "Hello-world-app/ecs-fargate/terraform.tfstate"
    region = "eu-north-1"
  }
}