variable "common_tags" {
  description = "공통 태그 변수"
  type = object({
    Environment = string
    Project     = string
    Owner       = string
  })
}

variable "subnet_cidr_block" {
  description = "서브넷 CIDR block을 설정하는 변수"
  type        = string
}

variable "subnet_vpc_id" {
  description = "서브넷 구성할 때 VPC ID를 설정하는 변수"
  type        = string
}

variable "availability_zone_index" {
  description = "서브넷을 구성할 때 사용할 가용 영역의 인덱스 (0, 1, 2, ...)"
  type        = number
  default     = 0
}

variable "is_subnet_public" {
  description = "서브넷을 퍼블릭으로 만들지 여부를 설정하는 변수"
  type        = bool
  default     = false
}