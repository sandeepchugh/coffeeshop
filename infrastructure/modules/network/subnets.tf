resource "aws_subnet" "publicA" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.publicA_subnet_cidr_block
  availability_zone = var.az1a
  map_public_ip_on_launch = true

  tags = {
    Name = "publicA"
  }
}

resource "aws_subnet" "publicB" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.publicB_subnet_cidr_block
  availability_zone = var.az1b
  map_public_ip_on_launch = true

  tags = {
    Name = "publicB"
  }
}

resource "aws_subnet" "publicC" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.publicC_subnet_cidr_block
  availability_zone = var.az1c
  map_public_ip_on_launch = true

  tags = {
    Name = "publicC"
  }
}

resource "aws_subnet" "appA" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.appA_subnet_cidr_block
  availability_zone = var.az1a

  tags = {
    Name = "AppA"
  }
}

resource "aws_subnet" "appB" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.appB_subnet_cidr_block
  availability_zone = var.az1b

  tags = {
    Name = "AppB"
  }
}

resource "aws_subnet" "appC" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.appC_subnet_cidr_block
  availability_zone = var.az1c

  tags = {
    Name = "AppC"
  }
}

resource "aws_subnet" "dbA" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.dbA_subnet_cidr_block
  availability_zone = var.az1a

  tags = {
    Name = "DbA"
  }
}

resource "aws_subnet" "dbB" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.dbB_subnet_cidr_block
  availability_zone = var.az1b

  tags = {
    Name = "DbB"
  }
}

resource "aws_subnet" "dbC" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.dbC_subnet_cidr_block
  availability_zone = var.az1c

  tags = {
    Name = "DbC"
  }
}