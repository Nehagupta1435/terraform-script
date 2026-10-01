resource "aws_internet_gateway" "igw" {
  vpc_id = "vpc-0ddf1b0470b4d7eab"

  tags = {
    Name = "terraform-igw"
  }
}