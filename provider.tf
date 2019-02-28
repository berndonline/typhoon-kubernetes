provider "aws" {
  version = "~> 1.13.0"
  alias   = "default"

  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "techbloc-terraform-data"
    key    = "openshift-311"
    region = "eu-west-1"
  }
}

provider "ct" {
  version = "0.3.0"
}

provider "local" {
  version = "~> 1.0"
  alias = "default"
}

provider "null" {
  version = "~> 1.0"
  alias = "default"
}

provider "template" {
  version = "~> 1.0"
  alias = "default"
}

provider "tls" {
  version = "~> 1.0"
  alias = "default"
}
