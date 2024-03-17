provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "postgres_db" {
  allocated_storage = 8
  engine            = "postgres"
  engine_version    = "12"
  instance_class    = "db.t3.micro"
  identifier        = "db-fiap-burger-svc"
  name              = var.db_name
  username          = "cG9zdGdyZXM="
  password          = "MTIzNDU2"

  skip_final_snapshot = true


  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
}

resource "aws_security_group" "db_sg" {
  name        = "db-fiap-burger-sg"
  description = "Security group for fiap-burger PostgreSQL DB"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

}
