resource "aws_instance" "web" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = var.instance_type_web 

  tags = {
    Name = "Created-using-terraform"
  }
}

resource "aws_instance" "db" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = var.instance_type_db

  tags = {
    Name = "Created-using-terraform-DB-machine-rename"
  }
}
