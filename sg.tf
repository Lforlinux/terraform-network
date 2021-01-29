resource "aws_security_group" "manual_sg" {
  name        = "my-manual-sg"
  description = "manual sg import eg"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "manual sg import eg"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "manual_sg"
  }
}