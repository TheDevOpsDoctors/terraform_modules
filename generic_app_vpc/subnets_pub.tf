resource "aws_subnet" "app_vpc_pub_1" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.0.0/19"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags {
    Name = "wbe_pub_1"
    app_name = "wbe"
  }
}

resource "aws_subnet" "app_vpc_pub_2" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.32.0/19"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags {
    Name = "wbe_pub_2"
    app_name = "wbe"
  }
}

resource "aws_subnet" "app_vpc_pub_3" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.64.0/19"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true
  tags {
    Name = "wbe_pub_3"
    app_name = "wbe"
  }
}

resource "aws_subnet" "app_vpc_pub_4" {
  vpc_id = "${aws_vpc.app_vpc.id}"
  cidr_block = "10.43.96.0/19"
  availability_zone = "us-east-1e"
  map_public_ip_on_launch = true
  tags {
    Name = "wbe_pub_4"
    app_name = "wbe"
  }
}
