resource "aws_route_table" "public_rt" {
  vpc_id = "vpc-0ddf1b0470b4d7eab"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-079e2a8716ea2e138"
  }

  tags = {
    Name = "terraform-public-rt"
  }
}

----------------------------------------------------------------------------------------

resource "aws_route_table_association" "public-assoc" {
  subnet_id      = "subnet-05e649ae9fd9da24a"
  route_table_id = "rtb-0dc1adc13c1bf377d"
}

----------------------------------------------------------------------------------------

