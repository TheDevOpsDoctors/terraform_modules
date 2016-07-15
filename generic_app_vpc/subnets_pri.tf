resource "aws_subnet" "app_vpc_pri_1" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.128.0/19"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false
  tags {
    Name = "wbe_pri_1"
    app_name = "wbe"
  }
}

resource "aws_subnet" "app_vpc_pri_2" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.160.0/19"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false
  tags {
    Name = "wbe_pri_2"
    app_name = "wbe"
  }
}

resource "aws_subnet" "app_vpc_pri_3" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.192.0/19"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = false
  tags {
    Name = "wbe_pri_3"
    app_name = "wbe"
  }
}

resource "aws_subnet" "app_vpc_pri_4" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.224.0/19"
  availability_zone = "us-east-1e"
  map_public_ip_on_launch = false
  tags {
    Name = "wbe_pri_4"
    app_name = "wbe"
  }
}
