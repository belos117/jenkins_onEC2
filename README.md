## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.41.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.41.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.jenkins_ec2](https://registry.terraform.io/providers/hashicorp/aws/5.41.0/docs/resources/instance) | resource |
| [aws_security_group.jenkins_security_group](https://registry.terraform.io/providers/hashicorp/aws/5.41.0/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI for Operating System | `string` | `"ami-0c1c30571d2dae5c9"` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Associate public IP address | `bool` | `true` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | instance type to deploy instance | `string` | `"t3.micro"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region to deploy instance | `string` | `"eu-west-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | Public IP address of the EC2 instance |
