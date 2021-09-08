variable "namespace" {
  type = string
}
 
variable "vpc" {
  type = any
}
 
variable "security_group" {
  type = any
}

variable "database_subnet_group" {
  type = list(string)
}