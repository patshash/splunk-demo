# Outputs file
output "splunk_url" {
  value = "https://${aws_eip.splunk.public_dns}:8000"
}

output "splunk_ip" {
  value = "http://${aws_eip.splunk.public_ip}"
}

# important dns outputs
output "aws_sub_zone_id" {
  value = module.dns.aws_sub_zone_id
}

output "aws_zone_record" {
  value = aws_route53_record.splunk.fqdn
}