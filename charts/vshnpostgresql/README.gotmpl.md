<!---
The README.md file is automatically generated with helm-docs!

Edit the README.gotmpl.md template instead.
-->

## License

This chart is licensed under the [Apache License 2.0](LICENSE).

This chart is based on the CloudNativePG "cluster" chart from https://github.com/cloudnative-pg/charts.
See [NOTICE](NOTICE) for attribution details.

## Introduction

This helm chart is used to deploy PostgreSQL clusters using the [CloudNativePG operator](https://cloudnative-pg.io/).

It is an opinionated chart designed to provide a subset of simple, stable and safe configurations. It is designed to provide a simple way to perform recovery operations to decrease your RTO.

If you need a more complicated setup we recommend that you either use the operator directly, create your own chart, or use Kustomize to modify the chart's resources.

## Configuration

The following table lists the configurable parameters of the chart. For default values and examples, consult `values.yaml`.

### Database types

Currently the chart supports three database types. These are configured via the `type` parameter:
* `postgresql` - A standard PostgreSQL database.
* `postgis` - A PostgreSQL database with the PostGIS extension installed.
* `timescaledb` - A PostgreSQL database with the TimescaleDB extension installed.

Depending on the type the chart will use a different Docker image and fill in some initial setup, like extension installation.

### Modes of operation

The chart has three modes of operation. These are configured via the `mode` parameter:
* `standalone` - Creates new or updates an existing CNPG cluster. This is the default mode.
* `replica` - Creates a replica cluster from an existing CNPG cluster.
* `recovery` - Recovers a CNPG cluster from a backup, object store or via pg_basebackup.

### Backup configuration

CNPG implements disaster recovery via [Barman](https://pgbarman.org/). The backup provider is configured via the `backups.provider` parameter. The following providers are supported:

* S3 or S3-compatible stores, like MinIO
* Microsoft Azure Blob Storage
* Google Cloud Storage

Additionally you can specify the following parameters:
* `backups.retentionPolicy` - The retention policy for backups. Defaults to `30d`.
* `backups.scheduledBackups` - An array of scheduled backups containing a name and a crontab schedule.

### Recovery

There is a separate document outlining the recovery procedure here: **[Recovery](docs/Recovery.md)**

### Examples

There are several configuration examples in the [examples](examples) directory. Refer to them for a basic setup and
refer to the [CloudNativePG Documentation](https://cloudnative-pg.io/documentation/current/) for more advanced configurations.

{{ template "chart.valuesSection" . }}
| poolers[].name                                      | string                                       | ``                                               | Name of the pooler resource                                                                                                                                                                                                                                                                                                                                                                                                                |
| poolers[].instances                                 | number                                       | `1`                                              | The number of replicas we want                                                                                                                                                                                                                                                                                                                                                                                                             |
| poolers[].type                                      | [PoolerType][PoolerType]                     | `rw`                                             | Type of service to forward traffic to. Default: `rw`.                                                                                                                                                                                                                                                                                                                                                                                      |
| poolers[].poolMode                                  | [PgBouncerPoolMode][PgBouncerPoolMode]       | `session`                                        | The pool mode. Default: `session`.                                                                                                                                                                                                                                                                                                                                                                                                         |
| poolers[].authQuerySecret                           | [LocalObjectReference][LocalObjectReference] | `{}`                                             | The credentials of the user that need to be used for the authentication query.                                                                                                                                                                                                                                                                                                                                                             |
| poolers[].authQuery                                 | string                                       | `{}`                                             | The credentials of the user that need to be used for the authentication query.                                                                                                                                                                                                                                                                                                                                                             |
| poolers[].parameters                                | map[string]string                            | `{}`                                             | Additional parameters to be passed to PgBouncer - please check the CNPG documentation for a list of options you can configure                                                                                                                                                                                                                                                                                                              |
| poolers[].template                                  | [PodTemplateSpec][PodTemplateSpec]           | `{}`                                             | The template of the Pod to be created                                                                                                                                                                                                                                                                                                                                                                                                      |
| poolers[].template                                  | [ServiceTemplateSpec][ServiceTemplateSpec]   | `{}`                                             | Template for the Service to be created                                                                                                                                                                                                                                                                                                                                                                                                     |
| poolers[].pg_hba                                    | []string                                     | `{}`                                             | PostgreSQL Host Based Authentication rules (lines to be appended to the pg_hba.conf file)                                                                                                                                                                                                                                                                                                                                                  |
| poolers[].monitoring.enabled                        | bool                                         | `false`                                          | Whether to enable monitoring for the Pooler.                                                                                                                                                                                                                                                                                                                                                                                               |
| poolers[].monitoring.podMonitor.enabled             | bool                                         | `true`                                           | Create a podMonitor for the Pooler.                                                                                                                                                                                                                                                                                                                                                                                                        |
