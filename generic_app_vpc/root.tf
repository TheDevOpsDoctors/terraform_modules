resource "aws_vpc" "app_vpc" {
  cidr_block = "10.43.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags {
    Name = "wbe"
    app_name = "wbe"
  }
}

resource "aws_internet_gateway" "app_vpc_vpc" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  tags {
    Name = "wbe_pub"
    app_name = "wbe"
  }
}

resource "aws_route_table" "app_vpc_pub" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.app_vpc_vpc.id}"
  }
  tags {
    Name = "wbe_pub"
    app_name = "wbe"
  }
}

resource "aws_route_table" "app_vpc_pri" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  tags {
    Name = "wbe_pri"
    app_name = "wbe"
  }
}

resource "aws_main_route_table_association" "app_vpc_default_rt" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  route_table_id = "${aws_route_table.app_vpc_pri.id}"
}
