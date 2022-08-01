## Splunk Enterprise and HashiCorp Demo

This repository will deploy a Splunk Enterprise instance into AWS and pre-configure some indexes and dashboards to collect logging and telemetry from HashiCorp Vault, HCP Vault and Terraform Cloud for Business.

### Get Started
Update the following files;
1. `hec_config.sh` - Include the unique Token generated from the logging/metric source.
2. `user-seed.conf` - Update username and password as required.
3. `variables.tf` - Update vars as required.
4. `main.tf` - update the private_key value used for provisioning.  
5. `acme.tf` - Update the ACME server to the production URL when testing is complete.

Dashboard files may need to be updated in files directory if new versions are released.