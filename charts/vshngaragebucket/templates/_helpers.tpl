{{- required ".Values.bucketName is required." .Values.bucketName -}}
{{- required ".Values.clusterRef is required." .Values.clusterRef -}}
{{- required ".Values.claimNamespace is required." .Values.claimNamespace -}}

# We need to get the instance namespace for the given clusterRef, so that we know where it is.
{{- define "instanceNamespace" -}}
{{- $existingClaim := lookup "vshn.appcat.vshn.io/v1" "VSHNGarage" .Values.claimNamespace .Values.clusterRef -}}
  {{- $existingClaim.status.instanceNamespace -}}
{{- end -}}
