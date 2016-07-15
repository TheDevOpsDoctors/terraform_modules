output "vpc_id" {
  value = "${aws_vpc.app_vpc.id}"
}

output "pub_subnet_ids_csv" {
  value = "${aws_subnet.app_vpc_pub_1.id},${aws_subnet.app_vpc_pub_2.id},${aws_subnet.app_vpc_pub_3.id},${aws_subnet.app_vpc_pub_4.id}"
}
