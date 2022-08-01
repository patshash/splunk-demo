#provider "google" {
#  version = "~> 3.31.0"
#}
provider "azurerm" {
  features {}
}

module "dns" {  
  source = "github.com/lhaig/terraform-dns-multicloud?ref=v0.3.0"

  hosted-zone = "hashidemos.io"
  namespace   = var.prefix                  # HashiCorp username
  owner       = var.prefix                  # HashiCorp email (no @ symbol)

  create_aws_dns_zone   = true              # should be set to true
  
  create_azure_dns_zone = false              # optional
  azure_location        = "westus"          # Azure creates a resource group
                                            #   which requires a region
                                    
  create_gcp_dns_zone   = false              # optional
  gcp_project           = "robert-peteuil"  # name of your GCP project
}

# Update DNS name
resource "aws_route53_record" "splunk" {
  zone_id = module.dns.aws_sub_zone_id
  name    = "${var.splunk_domain}.aws.hashidemos.io"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.splunk.public_ip]
}
