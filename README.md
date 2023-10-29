# filestore

This is just the web application portion. 

All required dependencies should be installable on a fresh Ubuntu instance using the `install.sh` script (though this may be incorrectly configured as some components were added by hand) -- **note that this will clone this repository and run `docker compose up` to run the webapp**.

## install & run

`docker-compose.yaml` in root dir is sufficient to build and run the webapp client & server as a docker container. 

```bash
git clone https://github.com/plsuwu/filestore.git
cd filestore
sudo docker compose up # or `docker-compose up` on windows maybe.
```

webapp available at `http://localhost:3000/` by default.
