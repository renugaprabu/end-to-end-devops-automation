variable "name" {
  description = "Name prefix for RDS resources"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID from the network module"
  type        = string
}

variable "subnet_ids" {
  description = "List of at least 2 subnet IDs (different AZs) for the DB subnet group"
  type        = list(string)
}

variable "ec2_sg_id" {
  description = "EC2 security group ID - only this SG is allowed to reach the DB"
  type        = string
}

variable "engine" {
  description = "Database engine: mysql or postgres"
  type        = string
  default     = "mysql"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Initial database name"
  type        = string
}

variable "db_username" {
  description = "Master username"
  type        = string
}

variable "db_password" {
  description = "Master password (min 8 chars)"
  type        = string
  sensitive   = true
}
