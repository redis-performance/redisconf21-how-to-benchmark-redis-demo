
#resources

terraform {
  backend "s3" {
    bucket = "performance-cto-group"
    key    = "redisconf21-demos/redisconf21-how-to-benchmark-redis-demo.tfstate"
    region = "us-east-1"
  }
}

# provider
provider "aws" {
  region = "${var.region}"
}

################################################################################
# This is the shared resources bucket key -- you will need it across environments like security rules,etc...
# !! do not change this !!
################################################################################
data "terraform_remote_state" "shared_resources" {
  backend = "s3"
  config = {
    bucket = "performance-cto-group"
    key    = "benchmarks/infrastructure/shared_resources.tfstate"
    region = "us-east-1"
  }
}
