output "vpc_id" {
    value = aws_vpc.main.id
    description = "The generated vpc id"
}

output "nacl_id" {
    value = aws_vpc.main.default_network_acl_id
    description = "The generated nacl"
}

output "route_table_id" {
    value = aws_vpc.main.default_route_table_id
    description = "The generated route table"
}

output "tenancy" {
    value = aws_vpc.main.instance_tenancy
    description = "The default tenancy"
}

output "dhcp_options_id" {
    value = aws_vpc.main.dhcp_options_id
    description = "The default dhcp_options_id"
}

output "default_security_group_id" {
    value = aws_vpc.main.default_security_group_id
    description = "The default security group id"
}

output "publicSubnetA" {
    value = aws_subnet.publicA.id
}

output "publicSubnetB" {
    value = aws_subnet.publicB.id
}

output "publicSubnetC" {
    value = aws_subnet.publicC.id
}

output "appA" {
    value = aws_subnet.appA.id
}

output "appB" {
    value = aws_subnet.appB.id
}

output "appC" {
    value = aws_subnet.appC.id
}

output "KoffeeLuvAlbName" {
    value = aws_lb.Koffee-Luv-ALB.arn
}

output "KoffeeLuvTGArn" {
    value = aws_lb_target_group.Koffee-Luv-TG.arn
}