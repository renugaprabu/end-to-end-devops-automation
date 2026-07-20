aws_region           = "us-east-1"

vpc_cidr             = "10.0.0.0/16"
public_subnet_1_cidr = "10.0.1.0/24"
public_subnet_2_cidr = "10.0.2.0/24"
availability_zone_1  = "us-east-1a"
availability_zone_2  = "us-east-1b"

vpc_name           = "dev-vpc"

sg_name           = "dev-web-sg"

ami               = "ami-0b6c6ebed2801a5cb"   # Replace with valid Ubuntu/Amazon Linux AMI
instance_type     = "t2.micro"
key_name          = "new-key-20-july" # Must match AWS key pair
instance_name     = "dev-web-ec2"
