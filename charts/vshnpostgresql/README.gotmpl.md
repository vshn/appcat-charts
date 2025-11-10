<!---
The README.md file is automatically generated with helm-docs!

Edit the README.gotmpl.md template instead.
-->

## Introduction

This helm chart is used to deploy PostgreSQL instances using the [CloudNativePG operator](https://cloudnative-pg.io).

## Configuration

The following table lists the configurable parameters chart. For default values and examples, consult `values.yaml`.

### Generic parameters
| Parameter               | Description                                               | Default
|---                      | ---                                                       | ---
| `type`                  | Type of database. Supported types: `postgresql`, `postgis`, `timescaledb` | `postgresql`
| `version.postgresql`    | PostgreSQL major version to use                           | `16`
| `cluster.instances`     | Number of instances to deploy                             | 3
| `cluster.imageName`     | Container image name supporting both tags and digests     |
| `cluster.storage.size`  | PVC size of the instance                                  | 8Gi
| `cluster.storage.storageClass` | StorageClass to use for the PVC                     |
| `cluster.resources`     | Resources describes the compute resource requirements. We strongly advise using the same settings for limits and requests for Guaranteed QoS. See: [resource-units] |
| `cluster.affinity`      | Defines the affinity for the pods                          | `{"topologyKey": "topology.kubernetes.io/zone"}`

### Backup

| Parameter                             | Description                               | Default
| ---                                   | ---                                       | ---
| `backups.enabled`                     | Enabled is a flag to enable backups       | false
| `backups.method`                      | Backup method: `barmanObjectStore` or `plugin` | `barmanObjectStore`
| `backups.provider`                    | Backup provider: `s3`, `azure` or `google` | `s3`
| `backups.retentionPolicy`             | Retention policy for backups              | `30d`
| `backups.s3.bucket`                   | Name of the s3 bucket for backups         |
| `backups.s3.region`                   | AWS region for the s3 bucket              |
| `backups.s3.accessKey`                | Access key for the s3 bucket              |
| `backups.s3.secretKey`                | Secret key for the s3 bucket              |
| `backups.scheduledBackups[].name`     | Name of the scheduled backup              | `daily-backup`
| `backups.scheduledBackups[].schedule` | Cron schedule for the backup              | `0 0 0 * * *`

### Monitoring

| Parameter                             | Description                                 | Default
| ---                                   | ---                                         | ---
| `cluster.monitoring.enabled`          | Enable Prometheus monitoring                | false
| `cluster.monitoring.podMonitor.enabled` | Enable PodMonitor creation                | true
| `cluster.monitoring.prometheusRule.enabled` | Enable PrometheusRule for automated alerts | true

### PostgreSQL configuration

| Parameter                                    | Description                                      | Default
| ---                                          | ---                                              | ---
| `cluster.postgresql.parameters`              | PostgreSQL configuration options (postgresql.conf) | `{}`
| `cluster.postgresql.pg_hba`                  | PostgreSQL Host Based Authentication rules       | `[]`
| `cluster.postgresql.shared_preload_libraries` | Lists of shared preload libraries to add to defaults | `[]`

### Connection Pooling (PgBouncer)

| Parameter                      | Description                               | Default
| ---                            | ---                                       | ---
| `poolers[].name`               | Name of the pooler resource               |
| `poolers[].type`               | Type of service: `rw` or `ro`             | `rw`
| `poolers[].poolMode`           | PgBouncer pooling mode                    | `session`
| `poolers[].instances`          | Number of PgBouncer instances             | 1
| `poolers[].parameters`         | Additional PgBouncer configuration parameters | `{}`

### Recovery

| Parameter                     | Description                                    | Default
| ---                           | ---                                            | ---
| `mode`                        | Cluster mode: `standalone` or `recovery`       | `standalone`
| `recovery.method`             | Recovery method: `backup`, `object_store`, `pg_basebackup`, or `import` | `backup`
| `recovery.backupName`         | Name of the backup to recover from (required for `backup` method) |
| `recovery.clusterName`        | Original cluster name when used in backups     |
| `recovery.provider`           | Recovery provider: `s3`, `azure` or `google`   | `s3`
| `recovery.pitrTarget.time`    | Point-in-time recovery target in RFC3339 format |

<!---
Common/Useful Link references from values.yaml
-->
[resource-units]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes
[cloudnative-pg]: https://cloudnative-pg.io/documentation/current/
