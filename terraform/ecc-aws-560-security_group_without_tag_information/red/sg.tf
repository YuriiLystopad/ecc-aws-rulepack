resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "this" {
  name = "560_security_group_red"
  vpc_id = aws_vpc.this.id
}