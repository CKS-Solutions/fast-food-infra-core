output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "CIDR block da VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_id_1" {
  description = "ID da subnet pública"
  value       = aws_subnet.public[0].id
}

output "public_subnet_id_2" {
  description = "ID da subnet pública"
  value       = aws_subnet.public[1].id
}

output "private_subnet_id_1" {
  description = "ID da subnet privada"
  value       = aws_subnet.private[0].id
}

output "private_subnet_id_2" {
  description = "ID da subnet privada"
  value       = aws_subnet.private[1].id
}
