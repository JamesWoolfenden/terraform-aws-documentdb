# terraform-aws-documentdb

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-documentdb/workflows/Verify/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-documentdb)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-documentdb.svg)](https://github.com/JamesWoolfenden/terraform-aws-documentdb/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-documentdb.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-documentdb/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-documentdb/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-documentdb&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-documentdb/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-documentdb&benchmark=INFRASTRUCTURE+SECURITY)

---

Terraform module a documentdb. It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

![alt text](./diagram/documentdb.png)

Include this repository as a module in your existing Terraform code:

```hcl
module "documentdb" {
  source                 = "jameswoolfenden/documentdb/aws"
  common_tags            = var.common_tags
}
```

## Costs

```text
Monthly cost estimate

Project: JamesWoolfenden/terraform-aws-documentdb/example/examplea

 Name                                                          Monthly Qty  Unit                Monthly Cost

 module.documentdb.aws_docdb_cluster.examplea
 └─ Backup storage                                         Monthly cost depends on usage: $0 per GB

 module.documentdb.aws_docdb_cluster_instance.examplea[0]
 ├─ Database instance (on-demand, db.r5.large)                         730  hours                    $237.25
 ├─ Storage                                                Monthly cost depends on usage: $0 per GB
 └─ I/O                                                    Monthly cost depends on usage: $0 per 1M requests

 OVERALL TOTAL                                                                                       $237.25
```

## Detailed Notes

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_docdb_cluster.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster) | resource |
| [aws_docdb_cluster_instance.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance) | resource |
| [aws_docdb_cluster_parameter_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group) | resource |
| [aws_docdb_subnet_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | n/a | `bool` | `false` | no |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | n/a | `number` | `5` | no |
| <a name="input_change_stream_log_retention_duration"></a> [change\_stream\_log\_retention\_duration](#input\_change\_stream\_log\_retention\_duration) | Defines the duration of time (in seconds) that the change stream log is retained and can be consumed. | `number` | `10800` | no |
| <a name="input_cluster_identifier"></a> [cluster\_identifier](#input\_cluster\_identifier) | n/a | `string` | `"my-docdb-cluster"` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | n/a | `bool` | `false` | no |
| <a name="input_family"></a> [family](#input\_family) | n/a | `string` | `"docdb3.6"` | no |
| <a name="input_instance-prefix"></a> [instance-prefix](#input\_instance-prefix) | n/a | `string` | `"docdb-cluster-demo"` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | n/a | `string` | `"db.r5.large"` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `1` | no |
| <a name="input_instance_maintenance_window"></a> [instance\_maintenance\_window](#input\_instance\_maintenance\_window) | n/a | `string` | `"Sat:00:00-Sat:03:00"` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN of the key to encrypt the db with. | `string` | n/a | yes |
| <a name="input_master_password"></a> [master\_password](#input\_master\_password) | DocumentDB Password | `string` | n/a | yes |
| <a name="input_master_username"></a> [master\_username](#input\_master\_username) | n/a | `string` | `"docadmin"` | no |
| <a name="input_param_group_name"></a> [param\_group\_name](#input\_param\_group\_name) | n/a | `string` | `"examplea"` | no |
| <a name="input_profiler"></a> [profiler](#input\_profiler) | n/a | `string` | `"disabled"` | no |
| <a name="input_profiler_sampling_rate"></a> [profiler\_sampling\_rate](#input\_profiler\_sampling\_rate) | Defines the sampling rate for logged operations. | `number` | `1` | no |
| <a name="input_profiler_threshold_ms"></a> [profiler\_threshold\_ms](#input\_profiler\_threshold\_ms) | Defines the threshold for profiler | `number` | `100` | no |
| <a name="input_promotion_tier"></a> [promotion\_tier](#input\_promotion\_tier) | n/a | `number` | `0` | no |
| <a name="input_subnet_group_name"></a> [subnet\_group\_name](#input\_subnet\_group\_name) | n/a | `string` | `"docdb"` | no |
| <a name="input_subnet_list"></a> [subnet\_list](#input\_subnet\_list) | n/a | `list(any)` | n/a | yes |
| <a name="input_ttl_monitor"></a> [ttl\_monitor](#input\_ttl\_monitor) | n/a | `string` | `"enabled"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster"></a> [cluster](#output\_cluster) | n/a |
| <a name="output_instance"></a> [instance](#output\_instance) | n/a |
| <a name="output_properties"></a> [properties](#output\_properties) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy

This is the policy required to build this project:

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang
resource "aws_iam_policy" "terraform_pike" {
  name_prefix = "terraform_pike"
  path        = "/"
  description = "Pike Autogenerated policy from IAC"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeAccountAttributes",
                "ec2:DescribeAvailabilityZones"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "rds:CreateDBCluster",
                "rds:CreateDBClusterParameterGroup",
                "rds:CreateDBInstance",
                "rds:CreateDBSubnetGroup",
                "rds:DeleteDBCluster",
                "rds:DeleteDBClusterParameterGroup",
                "rds:DeleteDBInstance",
                "rds:DeleteDBSubnetGroup",
                "rds:DescribeDBClusterParameterGroups",
                "rds:DescribeDBClusterParameters",
                "rds:DescribeDBClusters",
                "rds:DescribeDBInstances",
                "rds:DescribeDBSubnetGroups",
                "rds:DescribeGlobalClusters",
                "rds:ListTagsForResource",
                "rds:ModifyDBCluster",
                "rds:ModifyDBClusterParameterGroup",
                "rds:ModifyDBInstance"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
})
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codecommit](https://github.com/jameswoolfenden/terraform-aws-codecommit) - Storing ones code

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-documentdb/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-documentdb/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2023 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
