resource "aws_vpc" "crissy_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {clear
    Name = "crissy_vpc"
  }
}
resource "aws_subnet" "crissy_vpc_public_subnet" {
  vpc_id     = aws_vpc.crissy_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Main"
  }
}