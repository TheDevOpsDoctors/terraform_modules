resource "aws_subnet" "pub_1" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_16_bit_prefix}.0.0/19"
  availability_zone = "eu-west-1a"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.app_name}_pub_1"
    app_name = "${var.app_name}"
  }
}

resource "aws_subnet" "pub_2" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_16_bit_prefix}.32.0/19"
  availability_zone = "eu-west-1b"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.app_name}_pub_2"
    app_name = "${var.app_name}"
  }
}

resource "aws_subnet" "pub_3" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_16_bit_prefix}.64.0/19"
  availability_zone = "eu-west-1c"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.app_name}_pub_3"
    app_name = "${var.app_name}"
  }
}
