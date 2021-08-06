resource "aws_instance" "web" {
  ami           = "ami-0747bdcabd34c712a"
  instance_type = var.instance_type

  tags = {
    Name = "created-by-terraform-edit"
  }
}

output ins-id {
     value = aws_instance.web.id
}

output instance_type {
    value = aws_instance.web.instance_type
}

output public_ip {
    value = aws_instance.web.public_ip
}