# forgejo

![Version: 16.2.1-vshn.1](https://img.shields.io/badge/Version-16.2.1--vshn.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 14.0.3](https://img.shields.io/badge/AppVersion-14.0.3-informational?style=flat-square)

Forgejo Helm chart for Kubernetes

**Homepage:** <https://forgejo.org/>

## Installation

```bash
helm repo add appcat https://charts.appcat.ch
helm install forgejo vshn/forgejo
```
<!---
The README.md file is automatically generated with helm-docs!

Edit the README.gotmpl.md template instead.
-->

## Introduction

This is a VSHN-patched Helm chart for deploying [Forgejo](https://forgejo.org/), a self-hosted Git service.
It is based on the upstream [forgejo-helm](https://code.forgejo.org/forgejo-helm/forgejo-helm) chart with patches applied for AppCat compatibility.

For full configuration reference, see the upstream documentation at https://code.forgejo.org/forgejo-helm/forgejo-helm.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| checkDeprecation | bool | `true` |  |
| clusterDomain | string | `"cluster.local"` |  |
| containerSecurityContext | object | `{}` |  |
| deployment.annotations | object | `{}` |  |
| deployment.env | list | `[]` |  |
| deployment.labels | object | `{}` |  |
| deployment.terminationGracePeriodSeconds | int | `60` |  |
| dnsConfig | object | `{}` |  |
| dnsPolicy | string | `""` |  |
| extraContainerVolumeMounts | list | `[]` |  |
| extraContainers | list | `[]` |  |
| extraDeploy | list | `[]` |  |
| extraInitVolumeMounts | list | `[]` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| gitea.additionalConfigFromEnvs | list | `[]` |  |
| gitea.additionalConfigSources | list | `[]` |  |
| gitea.admin.email | string | `"gitea@local.domain"` |  |
| gitea.admin.existingSecret | string | `nil` |  |
| gitea.admin.password | string | `""` |  |
| gitea.admin.passwordMode | string | `"keepUpdated"` |  |
| gitea.admin.username | string | `"gitea_admin"` |  |
| gitea.config."email.incoming" | object | `{}` |  |
| gitea.config."highlight.mapping" | object | `{}` |  |
| gitea.config."ssh.minimum_key_sizes" | object | `{}` |  |
| gitea.config.APP_NAME | string | `"Forgejo: Beyond coding. We forge."` |  |
| gitea.config.RUN_MODE | string | `"prod"` |  |
| gitea.config.actions | object | `{}` |  |
| gitea.config.admin | object | `{}` |  |
| gitea.config.api | object | `{}` |  |
| gitea.config.attachment | object | `{}` |  |
| gitea.config.avatar | object | `{}` |  |
| gitea.config.cache | object | `{}` |  |
| gitea.config.camo | object | `{}` |  |
| gitea.config.cors | object | `{}` |  |
| gitea.config.cron | object | `{}` |  |
| gitea.config.database | object | `{}` |  |
| gitea.config.federation | object | `{}` |  |
| gitea.config.git | object | `{}` |  |
| gitea.config.i18n | object | `{}` |  |
| gitea.config.indexer | object | `{}` |  |
| gitea.config.lfs | object | `{}` |  |
| gitea.config.log | object | `{}` |  |
| gitea.config.mailer | object | `{}` |  |
| gitea.config.markdown | object | `{}` |  |
| gitea.config.markup | object | `{}` |  |
| gitea.config.metrics | object | `{}` |  |
| gitea.config.migrations | object | `{}` |  |
| gitea.config.mirror | object | `{}` |  |
| gitea.config.oauth2 | object | `{}` |  |
| gitea.config.oauth2_client | object | `{}` |  |
| gitea.config.openid | object | `{}` |  |
| gitea.config.other | object | `{}` |  |
| gitea.config.packages | object | `{}` |  |
| gitea.config.picture | object | `{}` |  |
| gitea.config.project | object | `{}` |  |
| gitea.config.proxy | object | `{}` |  |
| gitea.config.queue | object | `{}` |  |
| gitea.config.repo-avatar | object | `{}` |  |
| gitea.config.repository | object | `{}` |  |
| gitea.config.security | object | `{}` |  |
| gitea.config.server.SSH_LISTEN_PORT | int | `2222` |  |
| gitea.config.server.SSH_PORT | int | `22` |  |
| gitea.config.service | object | `{}` |  |
| gitea.config.session | object | `{}` |  |
| gitea.config.storage | object | `{}` |  |
| gitea.config.time | object | `{}` |  |
| gitea.config.ui | object | `{}` |  |
| gitea.config.webhook | object | `{}` |  |
| gitea.ldap | list | `[]` |  |
| gitea.livenessProbe.enabled | bool | `true` |  |
| gitea.livenessProbe.failureThreshold | int | `10` |  |
| gitea.livenessProbe.initialDelaySeconds | int | `200` |  |
| gitea.livenessProbe.periodSeconds | int | `10` |  |
| gitea.livenessProbe.successThreshold | int | `1` |  |
| gitea.livenessProbe.tcpSocket.port | string | `"http"` |  |
| gitea.livenessProbe.timeoutSeconds | int | `1` |  |
| gitea.metrics.enabled | bool | `false` |  |
| gitea.metrics.serviceMonitor.enabled | bool | `false` |  |
| gitea.metrics.serviceMonitor.namespace | string | `""` |  |
| gitea.oauth | list | `[]` |  |
| gitea.podAnnotations | object | `{}` |  |
| gitea.readinessProbe.enabled | bool | `true` |  |
| gitea.readinessProbe.failureThreshold | int | `3` |  |
| gitea.readinessProbe.httpGet.path | string | `"/api/healthz"` |  |
| gitea.readinessProbe.httpGet.port | string | `"http"` |  |
| gitea.readinessProbe.initialDelaySeconds | int | `5` |  |
| gitea.readinessProbe.periodSeconds | int | `10` |  |
| gitea.readinessProbe.successThreshold | int | `1` |  |
| gitea.readinessProbe.timeoutSeconds | int | `1` |  |
| gitea.ssh.logLevel | string | `"INFO"` |  |
| gitea.startupProbe.enabled | bool | `false` |  |
| gitea.startupProbe.failureThreshold | int | `10` |  |
| gitea.startupProbe.initialDelaySeconds | int | `60` |  |
| gitea.startupProbe.periodSeconds | int | `10` |  |
| gitea.startupProbe.successThreshold | int | `1` |  |
| gitea.startupProbe.tcpSocket.port | string | `"http"` |  |
| gitea.startupProbe.timeoutSeconds | int | `1` |  |
| global.hostAliases | list | `[]` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.imageRegistry | string | `""` |  |
| global.storageClass | string | `""` |  |
| httpRoute.annotations | object | `{}` |  |
| httpRoute.enabled | bool | `false` |  |
| httpRoute.filters | list | `[]` |  |
| httpRoute.hostnames | list | `[]` |  |
| httpRoute.matches.path.type | string | `"PathPrefix"` |  |
| httpRoute.matches.path.value | string | `"/"` |  |
| httpRoute.matches.timeouts | object | `{}` |  |
| httpRoute.parentRefs | list | `[]` |  |
| httpRoute.port | string | `nil` |  |
| httpRoute.terminate | bool | `true` |  |
| image.digest | string | `""` |  |
| image.fullOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"code.forgejo.org"` |  |
| image.repository | string | `"forgejo/forgejo"` |  |
| image.rootless | bool | `true` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"git.example.com"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.hosts[0].paths[0].port | string | `"http"` |  |
| ingress.tls | list | `[]` |  |
| initContainers.resources.limits | object | `{}` |  |
| initContainers.resources.requests.cpu | string | `"100m"` |  |
| initContainers.resources.requests.memory | string | `"128Mi"` |  |
| initPreScript | string | `""` |  |
| namespaceOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.annotations."helm.sh/resource-policy" | string | `"keep"` |  |
| persistence.claimName | string | `"gitea-shared-storage"` |  |
| persistence.create | bool | `true` |  |
| persistence.enabled | bool | `true` |  |
| persistence.labels | object | `{}` |  |
| persistence.mount | bool | `true` |  |
| persistence.size | string | `"10Gi"` |  |
| persistence.storageClass | string | `nil` |  |
| persistence.subPath | string | `nil` |  |
| persistence.volumeName | string | `""` |  |
| podDisruptionBudget | object | `{}` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| priorityClassName | string | `""` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| route.annotations | object | `{}` |  |
| route.enabled | bool | `false` |  |
| route.host | string | `nil` |  |
| route.tls.caCertificate | string | `nil` | ---END PRIVATE KEY----- |
| route.tls.certificate | string | `nil` |  |
| route.tls.destinationCACertificate | string | `nil` | ---END CERTIFICATE----- |
| route.tls.existingSecret | string | `nil` |  |
| route.tls.insecureEdgeTerminationPolicy | string | `"Redirect"` |  |
| route.tls.privateKey | string | `nil` | ---END CERTIFICATE----- |
| route.tls.termination | string | `"edge"` |  |
| route.wildcardPolicy | string | `nil` |  |
| schedulerName | string | `""` |  |
| securityContext | object | `{}` |  |
| service.http.annotations | object | `{}` |  |
| service.http.clusterIP | string | `nil` |  |
| service.http.externalIPs | string | `nil` |  |
| service.http.externalTrafficPolicy | string | `nil` |  |
| service.http.extraPorts | list | `[]` |  |
| service.http.ipFamilies | string | `nil` |  |
| service.http.ipFamilyPolicy | string | `nil` |  |
| service.http.labels | object | `{}` |  |
| service.http.loadBalancerClass | string | `nil` |  |
| service.http.loadBalancerIP | string | `nil` |  |
| service.http.loadBalancerSourceRanges | list | `[]` |  |
| service.http.nodePort | string | `nil` |  |
| service.http.port | int | `3000` |  |
| service.http.type | string | `"ClusterIP"` |  |
| service.ssh.annotations | object | `{}` |  |
| service.ssh.clusterIP | string | `nil` |  |
| service.ssh.externalIPs | string | `nil` |  |
| service.ssh.externalTrafficPolicy | string | `nil` |  |
| service.ssh.hostPort | string | `nil` |  |
| service.ssh.ipFamilies | string | `nil` |  |
| service.ssh.ipFamilyPolicy | string | `nil` |  |
| service.ssh.labels | object | `{}` |  |
| service.ssh.loadBalancerClass | string | `nil` |  |
| service.ssh.loadBalancerIP | string | `nil` |  |
| service.ssh.loadBalancerSourceRanges | list | `[]` |  |
| service.ssh.nodePort | string | `nil` |  |
| service.ssh.port | int | `22` |  |
| service.ssh.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `false` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.imagePullSecrets | list | `[]` |  |
| serviceAccount.labels | object | `{}` |  |
| serviceAccount.name | string | `""` |  |
| signing.enabled | bool | `false` |  |
| signing.existingSecret | string | `""` |  |
| signing.gpgHome | string | `"/data/git/.gnupg"` |  |
| signing.privateKey | string | `""` |  |
| strategy.rollingUpdate.maxSurge | string | `"100%"` |  |
| strategy.rollingUpdate.maxUnavailable | int | `0` |  |
| strategy.type | string | `"Recreate"` |  |
| tcpRoute.annotations | object | `{}` |  |
| tcpRoute.enabled | bool | `false` |  |
| tcpRoute.parentRefs | list | `[]` |  |
| tcpRoute.port | string | `nil` |  |
| test.enabled | bool | `true` |  |
| test.image.name | string | `"busybox"` |  |
| test.image.tag | string | `"latest"` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |

## Source Code

* <https://code.forgejo.org/forgejo-helm/forgejo-helm>
* <https://codeberg.org/forgejo/forgejo>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://ghcr.io/visualon/bitnamicharts | common | 2.37.0 |

<!---
Common/Useful Link references from values.yaml
-->
[resource-units]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes
[prometheus-operator]: https://github.com/coreos/prometheus-operator
