output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "pub_subnet_ids_csv" {
  value = "${aws_subnet.pub_1.id},${aws_subnet.pub_2.id},${aws_subnet.pub_3.id}"
}
