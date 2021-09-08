variable "key_pair_name" {
    type = string
    default = "myLabKeyPair"
}

variable "vpc" {
    type = any
}

variable "db_config" {
    type = any
}

variable "sg" {
    type = any
}