resource "aws_lb" "lb" {
  
  name               = "My-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.advance_sec.id]
  subnets            = [aws_subnet.public.id,aws_subnet.public2.id]
  tags = {
    Name = "app1"
  }
}


resource "aws_lb_listener" "Listener" {
  load_balancer_arn = aws_lb.lb.id
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}


