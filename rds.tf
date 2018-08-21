resource "aws_db_subnet_group" "dbgrp" {
  count = "${var.subnetgrp_create ? 1 : 0}"

  name_prefix = "${var.name_prefix}"
  description = "Database subnet group for ${var.identifier}"
  subnet_ids  = ["${var.subnet_ids}"]
}


resource "aws_db_instance" "rds" {
  allocated_storage    = "${var.allocated_storage}"
  storage_type         = "${var.storage_type}"
  engine               = "${var.engine}"
  engine_version       = "${var.engine_version}"
  instance_class       = "${var.instance_class}"
  name                 = "${var.name}"
  username             = "${var.username}"
  password             = "${var.password}"
  port                 = "${var.port}"
  multi_az = "${var.multi_az}"
  db_subnet_group_name = "${aws_db_subnet_group.dbgrp.id}"
}