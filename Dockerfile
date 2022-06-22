FROM grafana/grafana-oss:9.0.1

USER nobody

# Dokku will pick this up
EXPOSE 3000