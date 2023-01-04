#create route table
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-gateway.id
  }
  tags = {
    Name = "my Route Table"
  }

}

# create route table association

resource "aws_route_table_association" "my_route_table_association" {
  subnet_id      = aws_subnet.my-subnet1.id
  route_table_id = aws_route_table.my_route_table.id

}
