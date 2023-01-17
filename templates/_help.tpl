{{/*
Example for lookup function
*/}}
{{- define "getValueFromSecret" -}}
{{- $secret := lookup "v1" "Secret" "default" "secret24" -}}
{{- if $secret -}}
{{/*
   Reusing existing secret data
*/}}
accesskey: {{ $secret.data.accesskey }}
secretkey: {{ $secret.data.secretkey }}
{{- else -}}
{{/*
    Generate new data
*/}}
name: "key"
vaule: "value"
{{- end -}}
{{- end -}}
