variable "allocated_storage" {}

variable "storage_type" {}

variable "engine" {}

variable "engine_version" {}

variable "instance_class" {}

variable "name" {}

variable "username" {}

variable "password" {}

variable "port" {}

variable "db_subnet_group_name" {
    type = "list"
}

variable "availability_zone" {}

variable "multi_az" {
    default = true
}