terraform {
  backend "s3" {
    bucket         = "portfolioinfra-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "portfolioInfra-Lock"

  }
}

resource "aws_s3_bucket" "happi-byck1" {
  bucket = "happi-byck1"

  tags = {
    Name        = "Portfolio Infra test bucket"
    Environment = "Dev"
  }

}
