FROM grafana/grafana-oss:8.4.4

USER nobody

# Dokku will pick this up
EXPOSE 3000