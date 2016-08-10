resource "aws_subnet" "pub" {
  vpc_id = "${aws_vpc.vpc.id}"
  count = "${length(var.pub_subnet_mask_suffixes)}"
  cidr_block = "${var.subnet_mask_prefix}.${var.pub_subnet_mask_suffixes[count.index]}"
  availability_zone = "${element(split(",", var.availability_zones[var.region]), count.index)}"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.app_name}_pub_${count.index}"
    app_name = "${var.app_name}"
  }
}
