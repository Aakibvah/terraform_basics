
# create subnet
resource "aws_subnet" "my-subnet1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.cidr_block[1]
  tags = {
    Name = "my-subnet1"
  }
}
