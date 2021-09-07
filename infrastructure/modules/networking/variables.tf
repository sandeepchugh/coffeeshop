variable "namespace" {
    description = "VPC Namespace"
    type = string
}

variable "vpc_cidr_block" {
    description = "VPC CIDR block - usually 10.0.0.0/16 or similar"
    default = "10.0.0.0/16"
    type = string
}

variable "subnet_public_1a_cidr_block" {
    description = "VPC CIDR block - usually 10.0.*.0/24 or similar"
    default = "10.0.1.0/24"
    type = string
}

variable "subnet_public_1b_cidr_block" {
    description = "VPC CIDR block - usually 10.0.*.0/24 or similar"
    default = "10.0.2.0/24"
    type = string
}

variable "subnet_private_web_1a_cidr_block" {
    description = "VPC CIDR block - usually 10.0.*.0/24 or similar"
    default = "10.0.4.0/24"
    type = string
}

variable "subnet_private_web_1b_cidr_block" {
    description = "VPC CIDR block - usually 10.0.*.0/24 or similar"
    default = "10.0.5.0/24"
    type = string
}

variable "subnet_private_rds_1a_cidr_block" {
    description = "VPC CIDR block - usually 10.0.*.0/24 or similar"
    default = "10.0.7.0/24"
    type = string
}

variable "subnet_private_rds_1b_cidr_block" {
    description = "VPC CIDR block - usually 10.0.*.0/24 or similar"
    default = "10.0.8.0/24"
    type = string
}
