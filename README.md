# filestore

> work in progress.

## implemented

currently contains:

- node.js clientside - built in sveltekit using "typescript" & tailwindcss,
- some php/nginx stuff happening serverside because i wanted a quick and hacky rce vulnerability.

- webapp
    - client could use some work + code cleanup
    - server could also use some work but im probably not going to bother
    - doesn't work as expected on google cloud VM; 
        - might need to reference non-localhost address when making api calls from the client?? 
- containerization
    - `docker-compose.yaml` to build and run the web service

## todo

- finish socket binding misconfiguration sandbox escape 

and then also all the other stuff post-sandbox escape:

- configure machine + sshd
- privesc stuff
- ??
- etc

> ideally allow for VM deployment before finalization

## install & run

`docker-compose.yaml` in root dir is sufficient to build and run the client & server in it's current state:

```bash
git clone https://github.com/plsuwu/filestore.git
cd filestore
sudo docker compose up # or `docker-compose up` on windows maybe.
```

webapp runs on `http://localhost:3000/` by default.
