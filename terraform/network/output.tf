output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_2.id
}

output "public_subnet_1_cidr" {
  value = aws_subnet.public_1.cidr_block
}

output "public_subnet_2_cidr" {
  value = aws_subnet.public_2.cidr_block
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "public_subnet_ids" {
  value = [aws_subnet.public_1.id, aws_subnet.public_2.id]
}
