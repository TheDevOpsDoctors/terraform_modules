resource "aws_subnet" "pub" {
  vpc_id = "${aws_vpc.vpc.id}"
  count = "${length(split(",", var.availability_zones[var.region]))}"
  cidr_block = "${var.subnet_mask_prefix}.${var.pub_subnet_mask_suffixes[count.index]}"
  availability_zone = "${element(split(",", var.availability_zones[var.region]), count.index)}"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.app_name}_${var.env}_pub_${count.index}"
    app_name = "${var.app_name}"
    env = "${var.env}"
  }
}

resource "aws_route_table_association" "pub_route_table_association" {
  count = "${length(var.pub_subnet_mask_suffixes)}"
  subnet_id = "${element(aws_subnet.pub.*.id, count.index)}"
  route_table_id = "${aws_route_table.pub.id}"
}
