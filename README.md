# SCTP-project-test

- Static-website taken from : https://github.com/jaezeu/cloudfront-static-web-module/tree/main/static-website

- Hosting static website on S3 following steps here: https://awstip.com/host-static-website-on-aws-s3-using-terraform-60cdbb7e0702

Steps: 
1) Created backend.tf file to store terraform statefile. 
2) Created main.tf file to create s3 bucket to host website
3) Create bucket-policy.tf and provider.tf 
4) Terraform init, plan, apply successful => http://zmw-my-static-website46551.s3-website.us-east-1.amazonaws.com
5) Terraform destroy