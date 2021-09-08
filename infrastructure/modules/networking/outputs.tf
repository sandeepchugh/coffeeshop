output "vpc" {
  value = aws_vpc.application_vpc.arn
}

output "subnets"{
  value = {
    public_1a = aws_subnet.public_1a,
    public_1b = aws_subnet.public_1b,
    private_web_1a = aws_subnet.private_web_1a,
    private_web_1b = aws_subnet.private_web_1b,
    private_rds_1a = aws_subnet.private_rds_1a,
    private_rds_1b = aws_subnet.private_rds_1b
  }
}
output "security_groups"{
  value = {
    load_balancer = aws_security_group.api_load_balancer_sg,
    ecs_cluster = aws_security_group.ecs_cluster_sg,
    db = aws_security_group.db_sg
  }
}