# Hekad Dockerfile

This will deploy a fully functional [hekad](http://hekad.readthedocs.org/) server in docker

Available on [Docker Hub](https://registry.hub.docker.com/u/frosquin/hekad).

## Run

    git clone git clone git@github.com:cnf/docker-hekad.git
    cd docker-hekad
    docker build -t heka .
    docker run -d -v /tmp/docker-hekad/hekad.toml:/etc/hekad/hekad.toml -p 4352:4352 heka
    open http://localhost:4352 to view heka's web interface

## Misc

[Create a hekad.toml](https://hekad.readthedocs.org/en/latest/config/index.html), and bind it to `/etc/hekad/hekad.toml`

    docker run -d -v /local/hekad.toml:/etc/hekad/hekad.toml -p <hekaport>:<hostport> frosquin/hekad

If you want to bind to any privileged ports (< 1024), run with `--cap-add NET_BIND_SERVICE`
