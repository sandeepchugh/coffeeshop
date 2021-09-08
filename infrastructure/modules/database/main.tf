resource "random_id" "random_16" {
  byte_length = 16 * 3 / 4
}
 
locals {
  db_password = random_id.random_16.b64_url
}
 
resource "aws_db_instance" "database" {
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  identifier             = "${var.namespace}-db-instance"
  name                   = "pets"
  username               = "admin"
  password               = local.db_password
  skip_final_snapshot    = true
  db_subnet_group_name   = var.database_subnet_group
  vpc_security_group_ids = [var.security_group.db]
 
}