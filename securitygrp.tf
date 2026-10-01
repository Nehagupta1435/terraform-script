resource "aws_security_group" "new-SG" {
  name        = "terraform-sg"
  description = "created using Terraform"
  vpc_id      = "vpc-0df7bc3640ff64c3c"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
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
    Name = "Terraform-SG"
  }
}


------------------------------------------------------------------------------------

resource "aws_instance" "ec2_instance" {
    ami = "ami-06cfeaaa22092f09d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [
    "sg-061b8161e08d64c50"
  ]
  tags = {
    name = "SERVER2"
  }
}