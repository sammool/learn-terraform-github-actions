resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block # VPC CIDR 설정
  enable_dns_support   = true           # VPC DNS 활성화
  enable_dns_hostnames = true           # VPC DNS 호스트 이름 활성화 (EC2 인스턴스에 퍼블릭 DNS 이름을 제공하기 위해 필요)

  tags = var.common_tags
}