# terraform-aws-documentdb

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-documentdb/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-documentdb)
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

## IAM Permissions

Policies used to create and destroy this resource:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "documentdb:DELETE",
        "documentdb:GET",
        "documentdb:PATCH",
        "documentdb:POST",
        "documentdb:PUT",
        "documentdb:SetWebACL",
        "documentdb:UpdateRestApiPolicy"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
```

## Detailed Notes

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                    | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_docdb_cluster.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster)                                 | resource    |
| [aws_docdb_cluster_instance.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance)               | resource    |
| [aws_docdb_cluster_parameter_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group) | resource    |
| [aws_docdb_subnet_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group)                       | resource    |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones)                   | data source |

## Inputs

| Name                                                                                                                                          | Description                                                                                           | Type        | Default                 | Required |
| --------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------- | ----------------------- | :------: |
| <a name="input_apply_immediately"></a> [apply_immediately](#input_apply_immediately)                                                          | n/a                                                                                                   | `bool`      | `false`                 |    no    |
| <a name="input_backup_retention_period"></a> [backup_retention_period](#input_backup_retention_period)                                        | n/a                                                                                                   | `number`    | `5`                     |    no    |
| <a name="input_change_stream_log_retention_duration"></a> [change_stream_log_retention_duration](#input_change_stream_log_retention_duration) | Defines the duration of time (in seconds) that the change stream log is retained and can be consumed. | `number`    | `10800`                 |    no    |
| <a name="input_cluster_identifier"></a> [cluster_identifier](#input_cluster_identifier)                                                       | n/a                                                                                                   | `string`    | `"my-docdb-cluster"`    |    no    |
| <a name="input_deletion_protection"></a> [deletion_protection](#input_deletion_protection)                                                    | n/a                                                                                                   | `bool`      | `false`                 |    no    |
| <a name="input_family"></a> [family](#input_family)                                                                                           | n/a                                                                                                   | `string`    | `"docdb3.6"`            |    no    |
| <a name="input_instance-prefix"></a> [instance-prefix](#input_instance-prefix)                                                                | n/a                                                                                                   | `string`    | `"docdb-cluster-demo"`  |    no    |
| <a name="input_instance_class"></a> [instance_class](#input_instance_class)                                                                   | n/a                                                                                                   | `string`    | `"db.r5.large"`         |    no    |
| <a name="input_instance_count"></a> [instance_count](#input_instance_count)                                                                   | n/a                                                                                                   | `number`    | `1`                     |    no    |
| <a name="input_instance_maintenance_window"></a> [instance_maintenance_window](#input_instance_maintenance_window)                            | n/a                                                                                                   | `string`    | `"Sat:00:00-Sat:03:00"` |    no    |
| <a name="input_kms_key_id"></a> [kms_key_id](#input_kms_key_id)                                                                               | The ARN of the key to encrypt the db with.                                                            | `string`    | n/a                     |   yes    |
| <a name="input_master_password"></a> [master_password](#input_master_password)                                                                | DocumentDB Password                                                                                   | `string`    | n/a                     |   yes    |
| <a name="input_master_username"></a> [master_username](#input_master_username)                                                                | n/a                                                                                                   | `string`    | `"docadmin"`            |    no    |
| <a name="input_param_group_name"></a> [param_group_name](#input_param_group_name)                                                             | n/a                                                                                                   | `string`    | `"examplea"`            |    no    |
| <a name="input_profiler"></a> [profiler](#input_profiler)                                                                                     | n/a                                                                                                   | `string`    | `"disabled"`            |    no    |
| <a name="input_profiler_sampling_rate"></a> [profiler_sampling_rate](#input_profiler_sampling_rate)                                           | Defines the sampling rate for logged operations.                                                      | `number`    | `1`                     |    no    |
| <a name="input_profiler_threshold_ms"></a> [profiler_threshold_ms](#input_profiler_threshold_ms)                                              | Defines the threshold for profiler                                                                    | `number`    | `100`                   |    no    |
| <a name="input_promotion_tier"></a> [promotion_tier](#input_promotion_tier)                                                                   | n/a                                                                                                   | `number`    | `0`                     |    no    |
| <a name="input_subnet_group_name"></a> [subnet_group_name](#input_subnet_group_name)                                                          | n/a                                                                                                   | `string`    | `"docdb"`               |    no    |
| <a name="input_subnet_list"></a> [subnet_list](#input_subnet_list)                                                                            | n/a                                                                                                   | `list(any)` | n/a                     |   yes    |
| <a name="input_ttl_monitor"></a> [ttl_monitor](#input_ttl_monitor)                                                                            | n/a                                                                                                   | `string`    | `"enabled"`             |    no    |

## Outputs

| Name                                                              | Description |
| ----------------------------------------------------------------- | ----------- |
| <a name="output_cluster"></a> [cluster](#output_cluster)          | n/a         |
| <a name="output_instance"></a> [instance](#output_instance)       | n/a         |
| <a name="output_properties"></a> [properties](#output_properties) | n/a         |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codecommit](https://github.com/jameswoolfenden/terraform-aws-documentdb) - Storing ones code

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-documentdb/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-documentdb/issues) to report any bugs or file feature requests.

## Copyrights

Copyright 2019-2022 James Woolfenden

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
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-documentdb&url=https://github.com/jameswoolfenden/terraform-aws-documentdb
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-documentdb&url=https://github.com/jameswoolfenden/terraform-aws-documentdb
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-documentdb
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-documentdb
[share_email]: mailto:?subject=terraform-aws-documentdb&body=https://github.com/jameswoolfenden/terraform-aws-documentdb
