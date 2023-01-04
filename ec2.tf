# create EC2 instance
resource "aws_instance" "my-server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "create and inject or create own key and inject private key in vm"
  vpc_security_group_ids      = aws_vpc_security_group.my_security.id
  subnet_id                   = aws_subnet.my-subnet1.id
  associate_public_ip_address = true

  tags = {
    Name = "my-server"
  }
}
