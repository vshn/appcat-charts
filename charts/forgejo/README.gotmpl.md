<!---
The README.md file is automatically generated with helm-docs!

Edit the README.gotmpl.md template instead.
-->

## Introduction

This is a VSHN-patched Helm chart for deploying [Forgejo](https://forgejo.org/), a self-hosted Git service.
It is based on the upstream [forgejo-helm](https://code.forgejo.org/forgejo-helm/forgejo-helm) chart with patches applied for AppCat compatibility.

For full configuration reference, see the upstream documentation at https://code.forgejo.org/forgejo-helm/forgejo-helm.

{{ template "chart.valuesSection" . }}
