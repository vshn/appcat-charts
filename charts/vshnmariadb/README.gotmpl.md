<!---
The README.md file is automatically generated with helm-docs!

Edit the README.gotmpl.md template instead.
-->

## Introduction

This helm chart is used to deploy mariadb instances using the [mariadb-operator](https://github.com/mariadb-operator/mariadb-operator).

## Configuration

The following table lists the configurable parameters chart. For default values and examples, consult `values.yaml`.

### Generic parameters
| Parameter               | Description                                               | Default
|---                      | ---                                                       | ---
| `image`                 | Image name to be used by the MariaDB instances. The supported format is <image>:<tag>.
Only MariaDB official images are supported. | 
| `replicas`              | Number of replicas to deploy                              | 3
| `myCnf`                 | Custom MariaDB configuration                              | ""
| `storage.size`          | PVC size of the instance                                  | 1Gi
| `resources`             | Resources describes the compute resource requirements.    |
| `rootPasswordSecretKeyRef` | Reference to the secret containing the root password   |
| `affinity`              | Definites the affinity for the pods                       |
| `startupProbe`          | Startup probe configuration for MariaDB containers        | `{failureThreshold: 30}`
| `livenessProbe`         | Liveness probe configuration for MariaDB containers       |
| `readinessProbe`        | Readiness probe configuration for MariaDB containers      |

### Galera

| Parameter                             | Description                     | Default
|---                                    | ---                             | ---
| `galera.enabled`                      | If galera should be enabled     | true
| `galera.config.resuseStorageVolume`   | ReuseStorageVolume indicates that storage volume used by MariaDB should be reused to store the Galera configuration files.    | true
| `galera.providerOptions`              | ProviderOptions is map of Galera configuration parameters. [More info]( https://mariadb.com/kb/en/galera-cluster-system-variables/#wsrep_provider_options). | `{'gcs.fc_single_primary': yes', 'cert.log_conflicts': 'yes'}`

### Metrics

| Parameter                             | Description                            | Default
| ---                                   | ---                                    | ---
| `metrics.enabled`                     | Enabled is a flag to enable Metrics    | true
| `exporter.image`                      | Image name to be used as metrics exporter. The supported format is <image>:<tag>. |

### Backup

| Parameter                             | Description                               | Default
| ---                                   | ---                                       | ---
| `backup.enabled`                      | Enabled is a flag to enable backups       | false
| `backup.maxRention`                   | Max retention for the backups in hours    | 720h # 30 days
| `backup.s3.bucket`                    | Name of the s3 bucket for the backups     |
| `backup.s3.endpoint`                  | Name of the s3 endpoint for the backups   |
| `backup.s3.prefix`                    | Optional subfolder to store the backups   |
| `backup.s3.accessKey`                 | Access key for the s3 bucket              |
| `backup.s3.secretKey`                 | Secret key for the s3 bucket              |

### TLS

| Parameter                             | Description                               | Default
| ---                                   | ---                                       | ---
| `tls.enabled`                         | Enabled is a flag to enable TLS           | true
| `tls.required`                        | If tls connection should be enforced      | false
