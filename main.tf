#terraform {
#  backend "s3" {
#    bucket = "geniusee"
#    key    = "backend.tfstate"
#    region = "us-east-1"
#  }
#}

locals {
  azs                    = ["us-east-1a", "us-east-1b", "us-east-1c"]
  environment            = "dev"
  kops_state_bucket_name = "${local.environment}-kops-state-geniusee"
  // Needs to be a FQDN
  kubernetes_cluster_name = "geniusee.local"
  ingress_ips             = ["0.0.0.0/0", "10.0.0.101/32"]
  vpc_name                = "${local.environment}-vpc"

  tags = {
    environment = "${local.environment}"
    terraform   = true
  }
}

data "aws_region" "current" {}
