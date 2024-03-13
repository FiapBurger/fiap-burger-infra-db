variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
}

variable "db_user" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the database should be created"
  type        = string
}

variable "cidr_blocks" {
  description = "CIDR blocks that are allowed to access the database"
  type        = string
}
