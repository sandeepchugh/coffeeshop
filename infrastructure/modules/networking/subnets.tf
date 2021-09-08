resource "aws_subnet" "public_1a" {
  vpc_id = aws_vpc.application_vpc.id
  cidr_block = var.subnet_public_1a_cidr_block
  map_public_ip_on_launch = "false"
  availability_zone = "us-east-1a"
  tags = {
    Name = "${var.namespace}-subnet-pub-1a"
  }
}

resource "aws_subnet" "public_1b" {
  vpc_id = aws_vpc.application_vpc.id
  cidr_block = var.subnet_public_1b_cidr_block
  map_public_ip_on_launch = "false"
  availability_zone = "us-east-1b"
  tags = {
    Name = "${var.namespace}-subnet-pub-1b"
  }
}

resource "aws_subnet" "private_web_1a" {
  vpc_id = aws_vpc.application_vpc.id
  cidr_block = var.subnet_private_web_1a_cidr_block
  map_public_ip_on_launch = "false"
  availability_zone = "us-east-1a"
  tags = {
    Name = "${var.namespace}-subnet-pvt-1a"
  }
}

resource "aws_subnet" "private_web_1b" {
  vpc_id = aws_vpc.application_vpc.id
  cidr_block = var.subnet_private_web_1b_cidr_block
  map_public_ip_on_launch = "false"
  availability_zone = "us-east-1b"
  tags = {
    Name = "${var.namespace}-subnet-pvt-1b"
  }
}

resource "aws_subnet" "private_rds_1a" {
  vpc_id = "${aws_vpc.application_vpc.id}"
  cidr_block = var.subnet_private_rds_1a_cidr_block
  map_public_ip_on_launch = "false"
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.namespace}-subnet-pvt-web-1a"
  }
}

resource "aws_subnet" "private_rds_1b" {
  vpc_id = "${aws_vpc.application_vpc.id}"
  cidr_block =  var.subnet_private_rds_1b_cidr_block
  map_public_ip_on_launch = "false"
  availability_zone = "us-east-1b"
  tags = {
    Name = "${var.namespace}-subnet-pvt-web-1b"
  }
}