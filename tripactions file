locals {
  environment           = "mgmt"
  airport_code          = "pdx"
  bucket_name           = "navan-${local.airport_code}-${local.environment}-${local.service_name}"
  service_name          = "valtix"
  regions               = ["us-west-2", "eu-central-1"]
  valtix_account_number = "425355469185"
}

module "valtix_controller" {
  source                        = "github.com/valtix-security/terraform-aws-setup"
  deployment_name               = "prod1"
  prefix                        = "${local.service_name}-egress"
  controller_aws_account_number = local.valtix_account_number
  s3_bucket                     = local.bucket_name
  object_duration               = 15
  create_cloud_trail            = true
  valtix_aws_cloud_account_name = "navan-prod-account"
  inventory_regions             = local.regions
}
