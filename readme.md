# Heka, Elastic Search, InfluxDB and Grafana

This will deploy a fully functional [hekad](http://hekad.readthedocs.org/) server in docker

Available on [Docker Hub](https://registry.hub.docker.com/u/frosquin/hekad).

## Run

    git clone git clone git@github.com:cnf/docker-hekad.git
    cd docker-hekad
    bin/dockrize

open http://localhost:4352 to view heka's web interface  
open http://localhost:9292 to view Elastic Search's web interface  
open http://localhost:8090 to view InfluxDB's web interface  
open http://localhost to view Grafana's web interface  

## Misc

If you want to bind to any privileged ports (< 1024), run with `--cap-add NET_BIND_SERVICE`
