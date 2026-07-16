provider "aws" {
  region = var.aws_region
}

# 1️⃣ Network Module
module "network" {
  source             = "../../terraform/network"
  vpc_cidr           = var.vpc_cidr
  public_subnet_1_cidr = var.public_subnet_1_cidr
  availability_zone_1  = var.availability_zone_1
  public_subnet_2_cidr = var.public_subnet_2_cidr
  availability_zone_2  = var.availability_zone_2
 
}

# 2️⃣ Security Module
module "security" {
  source  = "../../terraform/security"
  vpc_id  = module.network.vpc_id
  sg_name = var.sg_name
}

# 3️⃣ Compute Module
module "compute" {
  source         = "../../terraform/compute"
  ami            = var.ami
  instance_type  = var.instance_type
  subnet_id      = module.network.public_subnet_1_id
  sg_id          = module.security.web_sg_id
  key_name       = var.key_name
  instance_name  = var.instance_name
}

# Output EC2 Public IP
output "ec2_public_ip" {
  value = module.compute.public_ip
}
