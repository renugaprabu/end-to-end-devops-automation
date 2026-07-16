variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "second Public subnet CIDR block"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "Second public subnet CIDR block (different AZ)"
  type        = string
}

variable "availability_zone_1" {
  description = "Availability Zone for first subnet"
  type        = string
}

variable "availability_zone_2" {
  description = "Availability Zone for the second subnet"
  type        = string
}



