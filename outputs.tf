output "db_security_group_id" {
  description = "The ID of the security group attached to the database instance."
  value       = aws_security_group.db_sg.id
}
