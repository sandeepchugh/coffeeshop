module "networking" {
  source    = "./modules/networking"
  namespace = var.namespace
  vpc_cidr_block = "10.0.0.0/16"
  subnet_public_1a_cidr_block = "10.0.1.0/24"
  subnet_public_1b_cidr_block = "10.0.2.0/24"
  subnet_private_web_1a_cidr_block = "10.0.4.0/24"
  subnet_private_web_1b_cidr_block = "10.0.5.0/24"
  subnet_private_rds_1a_cidr_block = "10.0.7.0/24"
  subnet_private_rds_1b_cidr_block = "10.0.8.0/24"
}