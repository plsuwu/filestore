# filestore

this is just the webapp portion. includes an install shell script for VMs; doesn't really work though.

## install & run

`docker-compose.yaml` in root dir is sufficient to build and run the webapp client & server. 

```bash
git clone https://github.com/plsuwu/filestore.git
cd filestore
sudo docker compose up # or `docker-compose up` on windows maybe.
```

webapp available at `http://localhost:3000/` by default.
