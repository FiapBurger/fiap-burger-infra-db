variable "aws_region" {
  description = "AWS region for the RDS instance"
  default     = "us-east-1"
}

variable "db_user" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database user"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the RDS instance should be created"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the RDS instance"
  type        = list(string)
}
