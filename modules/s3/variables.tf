variable "bucket_name" {
  description = "S3 버킷 이름"
  type        = string
}

variable "tag_name" {
  description = "태그 설정할 때 이름을 설정하는 변수"
  type        = string
}

variable "tag_environment" {
  description = "태그 설정할 때 환경 태그를 설정하는 변수 (dev, prod, 등...)"
  type        = string
}

variable "tag_project" {
  description = "어떤 프로젝트에 대한 VPC인지 확인하기 위해, 프로젝트 태그를 설정하는 변수"
  type        = string
}

variable "tag_owner" {
  description = "누가 이거 만들었는지 확인하기 위한 태그"
  type        = string
}