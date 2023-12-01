# filestore

Boot to root-type CTF challenge. 

This was a project for a uni assignment, and I may or may not bother coming back to this to tidy it up (code was not required as part of the final submission so its pretty rough).

## install & run

Part of the `install.sh` will change your root password (see the script for more info; runs via ), so ideally - set up an Ubuntu Server VM instance with like, Virtualbox or something (I would imagine there are extra steps to configure networking). 

Can't promise this will work as intended but feel free to give it a go; I remember having to make some changes by hand but I think it will now work as intended (I cannot be bothered to test it).

```
curl https://raw.githubusercontent.com/plsuwu/filestore/main/install.sh | sh 
```

### just the webserver

Otherwise, you can clone the repo and run `docker-compose.yaml` to build and run the webapp client & backend in a docker container for a little initial foothold demo or whatever. 

```bash
git clone https://github.com/plsuwu/filestore.git
cd filestore
sudo docker compose up # or `docker-compose up` on windows maybe.
```

webapp front-end exposed on port 3000 by default (e.g `http://localhost:3000/`).
