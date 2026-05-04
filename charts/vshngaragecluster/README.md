# vshngaragecluster

![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for deploying a garage cluster via garage operator

## Installation

```bash
helm repo add appcat https://charts.appcat.ch
helm install vshngaragecluster vshn/vshngaragecluster
```

<!---
Common/Useful Link references from values.yaml
-->
[resource-units]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes
[prometheus-operator]: https://github.com/coreos/prometheus-operator
# vshngaragecluster

![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for deploying a garage cluster via garage operator

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Schedar Team | <info@vshn.ch> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adminKey | object | `{"enabled":false}` | Admin Key configuration |
| containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":true,"readOnlyRootFilesystem":false,"runAsNonRoot":true,"runAsUser":65532}` | Container security context configuration |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` | Disallow privilege escalation |
| containerSecurityContext.capabilities | object | `{"drop":["ALL"]}` | Linux capabilities to drop |
| containerSecurityContext.enabled | bool | `true` | Enable container security context |
| containerSecurityContext.readOnlyRootFilesystem | bool | `false` | Read-only root filesystem |
| containerSecurityContext.runAsNonRoot | bool | `true` | Run as non-root user |
| containerSecurityContext.runAsUser | int | `65532` | User ID to run the container |
| isOpenshift | bool | `false` | Set to true when deploying on OpenShift |
| podSecurityContext | object | `{"enabled":true,"fsGroup":65532,"fsGroupChangePolicy":"OnRootMismatch","seLinuxOptions":{}}` | Pod security context configuration |
| podSecurityContext.enabled | bool | `true` | Enable pod security context |
| podSecurityContext.fsGroup | int | `65532` | FSGroup for volume ownership |
| podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` | FSGroupChangePolicy for volume ownership changes |
| podSecurityContext.seLinuxOptions | object | `{}` | SELinux options for OpenShift compatibility |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{"limits":{"cpu":"25m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"256Mi"}}` | Resource requests and limits |
| service | object | `{"type":"ClusterIP"}` | Service configuration |
| service.type | string | `"ClusterIP"` | Service type |
| storageDataSpace | string | `"50Gi"` | PVC size for data storage |
| storageMetadataSpace | string | `"5Gi"` | PVC size for metadata storage |
| zone | string | `"us-east-1"` | The zone which this instance will serve |

