variable "route_table_subnet_ids" {
  description = "라우트 테이블을 연결할 서브넷 ID 리스트"
  type        = list(string)
}

variable "route_table_vpc_id" {
  description = "라우트 테이블을 연결할 VPC ID를 설정하는 변수"
  type        = string
}

variable "route_table_igw_id" {
  description = "라우트 테이블에 연결할 인터넷 게이트웨이 ID를 설정하는 변수"
  type        = string
  default     = null
}

variable "route_table_cidr_blocks" {
  description = "라우트 테이블에 연결할 CIDR 블록을 설정하는 변수"
  type        = list(string)
  default     = []
}

variable "is_for_public_subnet" {
  description = "퍼블릭 서브넷에 연결할 라우트 테이블인지 설정하는 변수"
  type        = bool
  default     = false
}

variable "network_interface_id" {
  description = "라우트 테이블에 연결할 네트워크 인터페이스 ID를 설정하는 변수 (ex) NAT Instance network interface)"
  type        = string
  default     = null
}

variable "common_tags" {
  description = "공통 태그 변수"
  type = object({
    Environment = string
    Project     = string
    Owner       = string
  })
}