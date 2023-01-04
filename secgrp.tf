# create security group

resource "aws_security_group" "my-security-group" {
  name        = "my-security-group"
  description = "To allow inbount and outbound traffic"
  vpc_id      = aws_vpc.my-vpc.id

  dynamic "ingress" {
    iterator = port
    for_each = var.ports
    content {
      cidr_blocks = ["0.0.0.0/0"]
      description = "value"
      from_port   = port.value
      protocol    = "tcp"
      to_port     = port.value
    }

  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = {
    Name = "Allow Traffc"
  }
}
