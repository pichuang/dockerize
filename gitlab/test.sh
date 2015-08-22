#!/bin/bash
cat docker-compose.yml |container-transform --output-type systemd
