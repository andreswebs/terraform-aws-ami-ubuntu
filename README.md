# terraform-aws-ami-ubuntu

Fetch the most recent Ubuntu 22.04 AMI by default.

[//]: # (BEGIN_TF_DOCS)


## Usage

Example:

```hcl
module "ubuntu_22_04_latest" {
  source = "github.com/andreswebs/terraform-aws-ami-ubuntu"
}

locals {
  ami_id = module.ami_ubuntu_22_04_latest.ami.image_id
}

## --> use `local.ami_id
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arch"></a> [arch](#input\_arch) | Processor architecture | `string` | `"amd64"` | no |
| <a name="input_ubuntu_version"></a> [ubuntu\_version](#input\_ubuntu\_version) | Ubuntu version | `string` | `"22.04"` | no |
| <a name="input_virtualization_type"></a> [virtualization\_type](#input\_virtualization\_type) | Virtualization type | `string` | `"hvm"` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | Volume type | `string` | `"ebs-gp2"` | no |

## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami"></a> [ami](#output\_ami) | SSM parameter resource containing the AMI data |
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | AMI ID |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.50.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.50.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

[//]: # (END_TF_DOCS)

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
