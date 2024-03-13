output "db_instance_endpoint" {
  description = "The connection endpoint for the database instance."
  value       = aws_db_instance.default.endpoint
}

output "db_instance_name" {
  description = "The name of the database instance."
  value       = aws_db_instance.default.name
}

output "db_security_group_id" {
  description = "The ID of the security group attached to the database instance."
  value       = aws_security_group.db_sg.id
}
