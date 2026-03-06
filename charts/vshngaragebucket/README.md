# vshngaragebucket

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for deploying a garage cluster via garage operator

## Installation

```bash
helm repo add appcat https://charts.appcat.ch
helm install vshngaragebucket vshn/vshngaragebucket
```

<!---
Common/Useful Link references from values.yaml
-->
[resource-units]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes
[prometheus-operator]: https://github.com/coreos/prometheus-operator
# vshngaragebucket

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for deploying a garage cluster via garage operator

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Schedar Team | <info@vshn.ch> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| bucketName | string | `""` | Name of the bucket, if empty, will be randomly generated |
| claimNamespace | string | `""` | ClaimNamespace is needed to lookup the necessary information about the instanceNamespace |
| clusterRef | string | `""` | ClusterRef is the name of the cluster that should get the bucket |

