# 1. 공통 태그 (중복 제거 후 하나만 유지)
variable "common_tags" {
  description = "모든 리소스에 적용될 공통 태그"
  type = object({
    Name        = string
    Environment = string
    Project     = string
    Owner       = string
  })
}

# 2. VPC 설정 관련
variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

# 3. Subnet 설정 관련
variable "subnet_cidr_block" {
  description = "서브넷 CIDR block"
  type        = string
}

variable "availability_zone_index" {
  description = "사용할 가용 영역 인덱스 (0, 1, 2...)"
  type        = number
  default     = 0
}

variable "is_subnet_public" {
  description = "퍼블릭 서브넷 여부"
  type        = bool
  default     = false
}

# 4. Route Table 설정 관련 (사용자가 직접 입력할 값만 유지)
variable "is_for_public_subnet" {
  description = "퍼블릭용 라우트 테이블 여부"
  type        = bool
  default     = false
}

# 참고: vpc_id나 igw_id 같은 변수들은 
# main.tf에서 'module.vpc.vpc_id'처럼 결과값을 직접 넘겨줄 것이기 때문에
# 굳이 여기서 다시 변수로 선언하지 않아도 됩니다!