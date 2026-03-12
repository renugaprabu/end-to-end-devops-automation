output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "public_subnet_cidr" {
  value = aws_subnet.public.cidr_block
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}
