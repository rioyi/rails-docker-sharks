#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec sidekiq

# Esta secuencia de comandos inicia Sidekiq en el contexto de nuestro paquete de aplicaciones.
