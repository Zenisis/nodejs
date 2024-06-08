terraform {


  backend "s3" {
    bucket = "new2311" # Replace with your actual S3 bucket name
    key    = "nodejs/ecs-fargate/terraform.tfstate"
    region = "eu-north-1"
  }


}
