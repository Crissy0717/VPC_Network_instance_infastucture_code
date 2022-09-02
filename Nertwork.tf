resource "aws_vpc" "crissy_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "crissy_vpc"
  }
}