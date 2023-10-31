FROM grafana/grafana-oss:10.2.0

USER nobody

# Dokku will pick this up
EXPOSE 3000
