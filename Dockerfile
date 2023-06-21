FROM grafana/grafana-oss:10.0.0

USER nobody

# Dokku will pick this up
EXPOSE 3000