terraform {
  backend "s3" {
    bucket         = "sammool-terraform-bucket"
    key            = "practice-service/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}