variable "igw_vpc_id" {
    description = "인터넷 게이트웨이를 연결할 VPC ID를 설정하는 변수"
    type        = string
}

variable "common_tags" {
  description = "공통 태그 변수"
  type = object({
    Environment = string
    Project     = string
    Owner       = string
  })
}