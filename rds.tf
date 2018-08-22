resource "aws_db_subnet_group" "dbgrp" {
  count = "${var.subnetgrp_create && var.create_vpc ? 1 : 0}"
  
  name_prefix = "${var.name_prefix}"
  description = "Database subnet group for ${var.identifier}"
  subnet_ids  = ["${var.subnet_ids}"]
}


resource "aws_db_instance" "rds" {
  count = "${var.create_vpc && var.create_rds ? 1 : 0}"
  allocated_storage    = "${var.allocated_storage}"
  storage_type         = "${var.storage_type}"
  engine               = "${var.engine}"
  engine_version       = "${var.engine_version}"
  instance_class       = "${var.instance_class}"
  name                 = "${var.name}"
  username             = "${var.username}"
  password             = "${var.password}"
  port                 = "${var.port}"
  skip_final_snapshot = "${var.skip_final_snapshot}"
  copy_tags_to_snapshot = "${var.copy_tags_to_snapshot}"
  storage_encrypted = "${var.storage_encrypted}"
  publicly_accessible = "${var.publicly_accessible}"
  multi_az = "${var.multi_az}"
  db_subnet_group_name = "${aws_db_subnet_group.dbgrp.id}"
  tags = "${merge(map("Name", format("%s", var.name)), var.tags)}"
}