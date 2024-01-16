# filestore

Boot-to-root CTF challenge. 

This was a project for a uni assignment, and I may or may not bother coming back to this to tidy it up (code was not required so the Typescript in particular is pretty rough).

## install & run

Part of the `install.sh` will change your root password (see the script for more info), so ideally use this on an isolated Ubuntu instance with like, Docker or Virtualbox or something. 

Can't promise it works flawlessly but as long as you're sandboxed it should be 90% of the way there; I remember having to make some system changes by hand and I have modified the script to hopefully correct for this, but ultimately I cannot be bothered to test it.

**install via curl**:
```sh
# run as root; do `su -` or something

curl https://raw.githubusercontent.com/plsuwu/filestore/main/install.sh | sh 
```

### just the webserver

Otherwise, you can clone the repo and run `docker-compose.yaml` to build and run the webapp client + backend portion for a very simple PHP reverse shell demo. 

```sh
git clone https://github.com/plsuwu/filestore.git
cd filestore
sudo docker compose up # or `docker-compose up` on windows maybe.
```

Front-end is exposed on port 3000 by default (if using an entirely Dockerized instance, that will probably be `http://localhost:3000/`).
