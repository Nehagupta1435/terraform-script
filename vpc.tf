resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"

  tags = {
    Name        = "terraform-vpc"
    Environment = "production"
  }
}

-------------------------------------------------------------------------------------

resource "aws_subnet" "public_subnet" {
  vpc_id                  = "vpc-0ddf1b0470b4d7eab"
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-north-1a"
tags = {
    Name = "terraform-public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = "vpc-0ddf1b0470b4d7eab"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-north-1b"

  tags = {
    Name = "terraform-private-subnet"
  }
}