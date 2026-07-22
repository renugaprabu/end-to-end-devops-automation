variable "vpc_id" {
  description = "VPC ID from network module"
  type        = string
}

variable "sg_name" {
  description = "Security group name"
  type        = string
}

variable "alb_sg_id" {
  description = "ALB security group ID. If set, HTTP (80) is only allowed from the ALB. If null, HTTP stays open."
  type        = string
  default     = null
}
