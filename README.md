# Grafana in Dokku

This repository contains the configuration of the Grafana instance running at grafana.vps.fdlo.ch.

Add a git remote for Dokku:
```bash
git remote add dokku dokku@vps.fdlo.ch:grafana
```

Additionally, some setup with Dokku is necessary:

```bash
dokku apps:create grafana
dokku storage:mount grafana /apps/grafana:/var/lib/grafana

cd /apps && mkdir ./grafana && chown nobody grafana

dokku network:set grafana attach-post-deploy prometheus-bridge

dokku config:set grafana GF_SECURITY_ADMIN_USER=<admin> GF_SECURITY_ADMIN_PASSWORD=<password> GF_SECURITY_COOKIE_SECURE=true

# Apps needs to be deployed once before calling this
dokku domains:remove grafana grafana.fdlo.ch
dokku domains:add grafana grafana.vps.fdlo.ch

dokku letsencrypt:enable grafana
```
