resource "aws_vpc" "vpc" {
  cidr_block = "${var.subnet_mask_prefix}.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags {
    Name = "${var.app_name}_${var.env}"
    app_name = "${var.app_name}"
    env = "${var.env}"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags {
    Name = "${var.app_name}_${var.env}_pub"
    app_name = "${var.app_name}"
    env = "${var.env}"
  }
}

resource "aws_route_table" "pub" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.main.id}"
  }
  tags {
    Name = "${var.app_name}_${var.env}_pub"
    app_name = "${var.app_name}"
    env = "${var.env}"
  }
}

resource "aws_route_table" "pri" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags {
    Name = "${var.app_name}_${var.env}_pri"
    app_name = "${var.app_name}"
    env = "${var.env}"
  }
}

resource "aws_main_route_table_association" "default_rt" {
  vpc_id = "${aws_vpc.vpc.id}"
  route_table_id = "${aws_route_table.pri.id}"
}
