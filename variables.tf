variable "allocated_storage" {}

variable "storage_type" {}

variable "engine" {}

variable "engine_version" {}

variable "instance_class" {}

variable "name" {}

variable "username" {}

variable "password" {}

variable "port" {}


variable "multi_az" {
    default = true
}

variable "subnetgrp_create" {}

variable "name_prefix" {}

variable "identifier" {}

variable "subnet_ids" {
    type = "list"
}

variable "skip_final_snapshot" {}

variable "create_vpc" {}

variable "create_rds" {}

variable "copy_tags_to_snapshot" {}

variable "publicly_accessible" {}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "storage_encrypted" {}