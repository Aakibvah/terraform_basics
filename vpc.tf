# creating vpc
resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr_block[0]
  tags = {
    Name = "my-vpc"
  }
}
