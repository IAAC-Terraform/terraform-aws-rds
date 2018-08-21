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