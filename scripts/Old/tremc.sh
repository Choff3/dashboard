#!/bin/bash
until /tremc/tremc; do
    echo "Restarting tremc" >&2
    sleep 60
done
