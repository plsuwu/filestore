# filestore
> CTF - currently a work in progress.

## implemented

- webapp
    - client could use some work + code cleanup
    - server could also use some work but im probably not going to bother
- containerization
    - `docker-compose` builds and runs the webapp sufficiently
    - docker breakout yet to work (some things going on in the `docker-compose.yaml`)

## todo

- finish socket binding misconfiguration

> deploy as a VM by this stage

add all the other stuff post-sandbox escape:

- sshd
- privesc
- ??
- etc



## install & run

`docker-compose.yaml` in root dir is sufficient to build and run the client & server in it's current state:

```bash
git clone https://github.com/plsuwu/filestore.git
cd filestore
docker-compose up
```

webapp runs on `http://localhost:3000/` by default.
