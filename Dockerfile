FROM grafana/grafana-oss:8.3.0

USER nobody

# Dokku will pick this up
EXPOSE 3000