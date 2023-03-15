#!/bin/bash

if [[ -z "${DEBUG}" ]]; then
    # API debug disabled
    echo "Starting backend api with debug disabled"
    poetry run python -m uvicorn api_backend.api_main:app --host 0.0.0.0 --port 8081
else
    # API debug enabled
    echo "Starting backend api with debug enabled"
    poetry run python -m debugpy --listen 0.0.0.0:6900 -m uvicorn api_backend.api_main:app --host 0.0.0.0 --port 8081
fi