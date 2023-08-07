{{/* Generate the chart version */}}
{{- define "go-server.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Generate the full name for the deployment/service */}}
{{- define "go-server.fullname" -}}
{{- default .Chart.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Generate labels */}}
{{- define "go-server.labels" -}}
helm.sh/chart: {{ include "go-server.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: {{ include "go-server.fullname" . }}
{{- end }}
