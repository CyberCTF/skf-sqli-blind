# OWASP SKF Blind SQL Injection

[OWASP Security Knowledge Framework](https://www.securityknowledgeframework.org/) lab [`python/SQLI-blind`](https://github.com/blabla1337/skf-labs/tree/35199b6f49658b75f860530c0f09b91e985198aa/python/SQLI-blind) from
[SKF labs](https://github.com/blabla1337/skf-labs), by Glenn ten Cate, Riccardo ten Cate and the SKF contributors: a Flask page viewer whose page id goes into a SQL query without showing its result (blind SQL injection).
This repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine is built by the lab's own Dockerfile, vendored unchanged in [`app/`](app).

| Machine | Service |
| --- | --- |
| web | the Python lab on port 5000, published on 5050 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:5050/. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: SKF's write-up [Python - SQLI (Blind)](https://github.com/blabla1337/skf-labs/blob/35199b6f49658b75f860530c0f09b91e985198aa/md/Python/sqli-blind.md) (the source of the SKF write-ups book), with the walkthrough. The write-up uses port 5000; this lab publishes on 5050 because macOS keeps 5000 for AirPlay.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as SKF labs ([LICENSE](LICENSE)). The third-party software inside the image keeps its own
licence. This application is deliberately vulnerable: keep it isolated.
