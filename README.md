# Grafana in Dokku

This repository contains the configuration of the Grafana instance running at grafana.vps.fdlo.ch.

Additionally, some setup with Dokku is necessary:

```bash
dokku apps:create grafana
dokku storage:mount grafana /apps/grafana:/var/lib/grafana

dokku set env grafana

cd /apps && mkdir ./grafana && chown nobody grafana

dokku domains:remove grafana grafana.fdlo.ch

dokku config:set grafana GF_SECURITY_ADMIN_USER=<admin>
dokku config:set grafana GF_SECURITY_ADMIN_PASSWORD=<password>
dokku config:set grafana GF_SECURITY_COOKIE_SECURE=true

# Apps needs to be deployed once before calling this
dokku domains:add grafana grafana.vps.fdlo.ch

dokku letsencrypt:enable grafana
```
