variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID from network module"
  type        = string
}

variable "sg_id" {
  description = "Security group ID from security module"
  type        = string
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}
