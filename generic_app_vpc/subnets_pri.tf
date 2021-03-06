resource "aws_subnet" "pri" {
  vpc_id = "${aws_vpc.vpc.id}"
  count = "${length(split(",", var.availability_zones[var.region]))}"
  cidr_block = "${var.subnet_mask_prefix}.${var.pri_subnet_mask_suffixes[count.index]}"
  availability_zone = "${element(split(",", var.availability_zones[var.region]), count.index)}"
  map_public_ip_on_launch = false
  tags {
    Name = "${var.app_name}_${var.env}_pri_${count.index}"
    app_name = "${var.app_name}"
    env = "${var.env}"
  }
}
