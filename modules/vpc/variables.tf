variable "cidr_block" {
  description = "VPC CIDR block을 설정하는 변수"
  type        = string
}

variable "common_tags" {
  description = "공통 태그 변수"
  type = object({
    Name        = string
    Environment = string
    Project     = string
    Owner       = string
  })
}