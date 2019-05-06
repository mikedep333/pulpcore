#!/bin/bash

export DJANGO_SETTINGS_MODULE=pulpcore.app.settings

#TODO: Determine list of installed plugins by inspecting image contents
scl enable rh-python36 "django-admin makemigrations file ansible cookbook docker maven python"
scl enable rh-python36 "django-admin migrate --noinput"
scl enable rh-python36 "django-admin migrate auth --noinput"

exec "$@"
