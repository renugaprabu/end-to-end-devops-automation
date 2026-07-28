provider "aws" {
  region = var.aws_region
}

# Network Module
module "network" {
  source             = "../../terraform/network"
  vpc_cidr           = var.vpc_cidr
  public_subnet_1_cidr = var.public_subnet_1_cidr
  availability_zone_1  = var.availability_zone_1
  public_subnet_2_cidr = var.public_subnet_2_cidr
  availability_zone_2  = var.availability_zone_2
 
}

# Security Module
module "security" {
  source  = "../../terraform/security"
  vpc_id  = module.network.vpc_id
  sg_name = var.sg_name
  alb_sg_id = module.alb.alb_sg_id
}

# Compute Module
module "compute" {
  source         = "../../terraform/compute"
  ami            = var.ami
  instance_type  = var.instance_type
  subnet_id      = module.network.public_subnet_1_id
  sg_id          = module.security.web_sg_id
  key_name       = var.key_name
  instance_name  = var.instance_name
}

# ALB Module
module "alb" {
  source              = "../../terraform/alb"
  name                = var.instance_name
  vpc_id              = module.network.vpc_id
  subnet_ids          = module.network.public_subnet_ids
  target_instance_id  = module.compute.instance_id
}

#  RDS Module
module "rds" {
  source      = "../../terraform/rds"
  name        = var.instance_name
  vpc_id      = module.network.vpc_id
  subnet_ids  = module.network.public_subnet_ids
  ec2_sg_id   = module.security.web_sg_id
  engine      = var.db_engine
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}

# Output 
output "ec2_public_ip" {
  value = module.compute.public_ip
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

