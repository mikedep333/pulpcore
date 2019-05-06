#!/bin/bash

source /pulp-common-entrypoint.sh

django-admin migrate --noinput

exec "$@"
