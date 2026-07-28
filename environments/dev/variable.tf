variable "aws_region" {}
variable "vpc_cidr" {}
variable "public_subnet_1_cidr" {}
variable "availability_zone_1" {}
variable "vpc_name" {}
variable "sg_name" {}
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "instance_name" {}
variable "public_subnet_2_cidr" {}
variable "availability_zone_2" {}
variable "db_engine" {
  default = "mysql"
}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {
  sensitive = true
}
