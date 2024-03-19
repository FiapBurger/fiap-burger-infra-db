provider "aws" {
  region = var.aws_region

}

# AWS RDS instance
resource "aws_db_instance" "postgres_db" {
  allocated_storage   = 20 
  storage_type        = "gp2"
  engine              = "postgres"
  engine_version      = "12"
  instance_class      = "db.t3.micro"
  identifier          = "db-fiap-burger-svc"
  username            = "cG9zdGdyZXM="
  password            = "MTIzNDU2"
  skip_final_snapshot = true
  multi_az            = false 

  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name

  assume_role {
    role_arn     = "arn:aws:iam::730335333567:role/LabRole"
    session_name = "TerraformSession"
  }


  tags = {
    Name        = "FiapBurgerDB"
    Environment = "development"
  }
}

# Security Group for RDS
resource "aws_security_group" "db_sg" {
  name        = "db-fiap-burger-sg"
  description = "Security group for FiapBurger PostgreSQL DB"
  vpc_id      = "vpc-0c9c3eae30dce3c6e"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Subnet group for RDS
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "fiap-burger-db-subnet-group"
  subnet_ids = [
          "subnet-081d1613d89ee8ba6",
          "subnet-0b97e6916779e8ddb"
  ]

  tags = {
    Name        = "FiapBurgerDBSubnetGroup"
    Environment = "development"
  }
}
