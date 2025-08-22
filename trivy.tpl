{{- if . }}
Vulnerability Scan Report
=========================
{{- range . }}
Target: {{ .Target }}
{{- if .Vulnerabilities }}
+-----------------+------------------+----------------+----------------+----------+
|   VULNERABILITY |     PACKAGE      | INSTALLED VER. |   FIXED VER.   | SEVERITY |
+-----------------+------------------+----------------+----------------+----------+
{{- range .Vulnerabilities }}
| {{ .VulnerabilityID | printf "%-15s" }} | {{ .PkgName | printf "%-16s" }} | {{ .InstalledVersion | printf "%-14s" }} | {{ .FixedVersion | printf "%-14s" }} | {{ .Severity | printf "%-8s" }} |
{{- end }}
+-----------------+------------------+----------------+----------------+----------+
{{- else }}
No HIGH or CRITICAL vulnerabilities found.
{{- end }}
{{- end }}
{{- else }}
No vulnerabilities found.
{{- end }}
