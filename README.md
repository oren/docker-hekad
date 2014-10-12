# Hekad Dockerfile

This will deploy a fully functional [hekad](http://hekad.readthedocs.org/) server in docker

Available on [Docker Hub](https://registry.hub.docker.com/u/frosquin/hekad).

## Usage

[Create a hekad.toml](https://hekad.readthedocs.org/en/latest/config/index.html), and bind it to `/etc/hekad/hekad.toml`

    docker run -d -v /local/hekad.toml:/etc/hekad/hekad.toml -p <hekaport>:<hostport> frosquin/hekad

If you want to bind to any privileged ports (< 1024), run with `--cap-add NET_BIND_SERVICE`
