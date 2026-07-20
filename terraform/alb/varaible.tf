variable "name" {
  description = "Name prefix for ALB resources"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID from the network module"
  type        = string
}

variable "subnet_ids" {
  description = "List of at least 2 subnet IDs (different AZs) for the ALB"
  type        = list(string)
}

variable "target_instance_id" {
  description = "EC2 instance ID to register as the ALB target"
  type        = string
}
