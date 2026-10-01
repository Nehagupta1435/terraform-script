resource "aws_instance" "my_ec2" {
  ami           = "ami-06cfeaaa22092f09d"
  instance_type = "t3.micro"

  tags = {
    Name        = "SERVER"

  }
}

---------------------------------------------------------------------------------

resource "aws_instance" "my-instance" {
  ami                    = "ami-06cfeaaa22092f09d" # Amazon Linux 2023 AMI ID for eu-north-1 (Update if changing regions)
  instance_type          = "t3.micro"
  subnet_id              = "subnet-03cb333c222ff42f6"
  vpc_security_group_ids = [
  "sg-03a68bc5eb2e355e5"
]

  # Optional: Uncomment if you want to attach an existing SSH key pair
  # key_name = "my-key"

  tags = {
    Name = "TerraformEC2Instance"
  }
}

------------------------------------------------------------------------------------------

resource "aws_instance" "my_instance" {
  ami                    = var.ami
  instance_type          = var.ec2_instance_type
}