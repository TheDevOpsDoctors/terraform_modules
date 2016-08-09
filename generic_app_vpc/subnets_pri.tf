resource "aws_subnet" "pri_1" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_16_bit_prefix}.128.0/19"
  availability_zone = "eu-west-1a"
  map_public_ip_on_launch = false
  tags {
    Name = "${var.app_name}_pri_1"
    app_name = "${var.app_name}"
  }
}

resource "aws_subnet" "pri_2" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_16_bit_prefix}.160.0/19"
  availability_zone = "eu-west-1b"
  map_public_ip_on_launch = false
  tags {
    Name = "${var.app_name}_pri_2"
    app_name = "${var.app_name}"
  }
}

resource "aws_subnet" "pri_3" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_16_bit_prefix}.192.0/19"
  availability_zone = "eu-west-1c"
  map_public_ip_on_launch = false
  tags {
    Name = "${var.app_name}_pri_3"
    app_name = "${var.app_name}"
  }
}
