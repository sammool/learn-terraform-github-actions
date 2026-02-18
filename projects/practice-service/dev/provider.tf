provider "aws" {
  region = "ap-northeast-2" # 서울 리전
  profile = "default"
}

terraform{
    required_version = "~>1.5"

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.9"
        }
    }
}