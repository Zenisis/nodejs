#SECURITY-GRP
resource "aws_security_group" "new-sg" {
  name = "advance_sec"
  vpc_id = aws_vpc.master2.id

  dynamic "ingress" {
    for_each = [0, 22, 443, 80, 8080, 8000, 8001, 8005, 8004, -1]
    content {
      from_port   = 0
      to_port     = 0
      protocol    = "-1" # Use "-1" for all protocols
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}  