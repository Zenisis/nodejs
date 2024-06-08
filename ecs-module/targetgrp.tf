resource "aws_lb_target_group" "tg" {
  name     = "my-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.master.id
  target_type = "ip"


  tags ={
    Name = "tg"
  }
}

