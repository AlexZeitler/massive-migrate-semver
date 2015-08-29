#!/usr/bin/env bash
echo Starting Postgres in a Docker container
docker kill massive-migrate-semver-postgres | true
docker rm massive-migrate-semver-postgres | true
docker run --name massive-migrate-semver-postgres -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres