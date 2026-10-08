# Upstream

| | |
| --- | --- |
| Project | OWASP Security Knowledge Framework labs (SKF labs) |
| Repository | https://github.com/blabla1337/skf-labs |
| Lab | `python/SQLI-blind` (Python) |
| Version | master (SKF labs has no releases) |
| Commit | 35199b6f49658b75f860530c0f09b91e985198aa |
| Licence | Apache-2.0 |

| Here | SKF labs path |
| --- | --- |
| `app/` | [`python/SQLI-blind`](https://github.com/blabla1337/skf-labs/tree/35199b6f49658b75f860530c0f09b91e985198aa/python/SQLI-blind) |

The vendored folder is that commit's lab folder, unchanged, without its Git history.

`app/Dockerfile` (the lab's own) builds the machine as is: `docker: { build: app }`. Its base image `alpine:3.7` is pinned by tag, and its Python dependencies by version in `requirements.txt`.

To update, replace the vendored folder with a newer SKF labs commit, then change this file.
