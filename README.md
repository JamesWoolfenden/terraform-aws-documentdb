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

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_availability_zones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) |
| [aws_docdb_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster) |
| [aws_docdb_cluster_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance) |
| [aws_docdb_cluster_parameter_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group) |
| [aws_docdb_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| apply\_immediately | n/a | `bool` | `false` | no |
| backup\_retention\_period | n/a | `number` | `5` | no |
| cluster\_identifier | n/a | `string` | `"my-docdb-cluster"` | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| deletion\_protection | n/a | `bool` | `false` | no |
| family | n/a | `string` | `"docdb3.6"` | no |
| instance-prefix | n/a | `string` | `"docdb-cluster-demo"` | no |
| instance\_class | n/a | `string` | `"db.r5.large"` | no |
| instance\_count | n/a | `number` | `1` | no |
| instance\_maintenance\_window | n/a | `string` | `"Sat:00:00-Sat:03:00"` | no |
| master\_password | DocumentDB Password | `string` | n/a | yes |
| master\_username | n/a | `string` | `"docadmin"` | no |
| param\_group\_name | n/a | `string` | `"examplea"` | no |
| subnet\_group\_name | n/a | `string` | `"docdb"` | no |
| subnet\_list | n/a | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| cluster | n/a |
| instance | n/a |
| properties | n/a |
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

Copyright © 2019-2021 James Woolfenden

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
