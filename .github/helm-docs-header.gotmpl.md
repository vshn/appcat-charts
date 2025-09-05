{{ template "chart.header" . }}
{{ template "chart.deprecationWarning" . }}

{{ template "chart.badgesSection" . }}

{{ template "chart.description" . }}

{{ template "chart.homepageLine" . }}

## Installation

```bash
helm repo add appcat https://charts.appcat.ch
helm install {{ template "chart.name" . }} vshn/{{ template "chart.name" . }}
```
