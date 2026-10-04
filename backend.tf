terraform {
  backend "s3" {
    bucket       = "propertyops-terraform-state-380560899592"
    key          = "propertyops/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}