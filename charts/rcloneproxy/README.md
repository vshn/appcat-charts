# rcloneproxy

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for deploying rclone as an intermediate s3 proxy

## Installation

```bash
helm repo add appcat https://charts.appcat.ch
helm install rcloneproxy vshn/rcloneproxy
```

<!---
Common/Useful Link references from values.yaml
-->
[resource-units]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes
[prometheus-operator]: https://github.com/coreos/prometheus-operator
# rcloneproxy

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for deploying rclone as an intermediate s3 proxy

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Schedar Team | <info@vshn.ch> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backend | object | `{"secretRef":{"keys":{"accessKeyID":"access-key-id","accessKeySecret":"access-key-secret","bucket":"bucket","endpoint":"endpoint","region":"region"},"name":""}}` | Backend S3 storage configuration |
| backend.secretRef | object | `{"keys":{"accessKeyID":"access-key-id","accessKeySecret":"access-key-secret","bucket":"bucket","endpoint":"endpoint","region":"region"},"name":""}` | Reference to an existing secret containing backend S3 credentials |
| backend.secretRef.keys | object | `{"accessKeyID":"access-key-id","accessKeySecret":"access-key-secret","bucket":"bucket","endpoint":"endpoint","region":"region"}` | Keys in the secret for each configuration value |
| backend.secretRef.keys.accessKeyID | string | `"access-key-id"` | Key for S3 access key ID |
| backend.secretRef.keys.accessKeySecret | string | `"access-key-secret"` | Key for S3 access key secret |
| backend.secretRef.keys.bucket | string | `"bucket"` | Key for S3 bucket name |
| backend.secretRef.keys.endpoint | string | `"endpoint"` | Key for S3 endpoint URL |
| backend.secretRef.keys.region | string | `"region"` | Key for S3 region |
| backend.secretRef.name | string | `""` | Name of the secret containing backend credentials |
| containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":true,"readOnlyRootFilesystem":false,"runAsNonRoot":true,"runAsUser":65532}` | Container security context configuration |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` | Disallow privilege escalation |
| containerSecurityContext.capabilities | object | `{"drop":["ALL"]}` | Linux capabilities to drop |
| containerSecurityContext.enabled | bool | `true` | Enable container security context |
| containerSecurityContext.readOnlyRootFilesystem | bool | `false` | Read-only root filesystem |
| containerSecurityContext.runAsNonRoot | bool | `true` | Run as non-root user |
| containerSecurityContext.runAsUser | int | `65532` | User ID to run the container |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"rclone/rclone"` | Image repository for rclone |
| image.tag | string | `"sha-73bcae2"` | Configure the image tag. To update to a newer version, use the commit sha from the tagged release |
| podSecurityContext | object | `{"enabled":true,"fsGroup":65532,"fsGroupChangePolicy":"OnRootMismatch","seLinuxOptions":{}}` | Pod security context configuration |
| podSecurityContext.enabled | bool | `true` | Enable pod security context |
| podSecurityContext.fsGroup | int | `65532` | FSGroup for volume ownership |
| podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` | FSGroupChangePolicy for volume ownership changes |
| podSecurityContext.seLinuxOptions | object | `{}` | SELinux options for OpenShift compatibility |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{"limits":{"cpu":"25m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"256Mi"}}` | Resource requests and limits |
| service | object | `{"port":9095,"type":"ClusterIP"}` | Service configuration |
| service.port | int | `9095` | Service port (rclone S3 server port) |
| service.type | string | `"ClusterIP"` | Service type |

