resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Terraform-VPC"
  }
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "Terraform-Subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Terraform-IGW"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Terraform-RT"
  }
}

resource "aws_route" "route" {
  route_table_id = aws_route_table.rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "rta" {
  route_table_id = aws_route_table.rt.id
  subnet_id = aws_subnet.main.id
}