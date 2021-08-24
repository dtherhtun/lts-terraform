# terraform-aws-ec2instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.55.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.deployer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_is_create_ec2"></a> [is\_create\_ec2](#input\_is\_create\_ec2) | n/a | `bool` | `true` | no |
| <a name="input_num_of_ec2"></a> [num\_of\_ec2](#input\_num\_of\_ec2) | number of ec2 instance | `number` | `1` | no |
| <a name="input_pub_key"></a> [pub\_key](#input\_pub\_key) | n/a | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | n/a | `string` | `"t3.micro"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
