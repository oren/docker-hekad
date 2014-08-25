# Hekad Dockerfile

This will deploy a fully functional [hekad](http://hekad.readthedocs.org/) server in docker

## Usage

[Create a hekad.toml](https://hekad.readthedocs.org/en/latest/config/index.html), and bind it to `/etc/hekad/hekad.toml`

    docker run -d -v /local/hekad.toml:/etc/hekad/hekad.toml -p <hekaport>:<hostport> frosquin/heka


