#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec rails s -b 0.0.0.0

# La primera línea importante es set -e, e indica al shell /bin/sh que ejecuta la secuencia de comandos que genere un fallo inmediato si hay problemas más adelante en la secuencia de comandos. A continuación, la secuencia de comandos verifica que tmp/pids/server.pid no esté presente para garantizar que no se produzcan conflictos de servidores cuando iniciemos la aplicación. Por último, la secuencia de comandos inicia el servidor de Rails con el comando bundle exec rails s. Usamos la opción -b con este comando para vincular el servidor a todas las direcciones IP y no a la predeterminada, localhost. Esta invocación hace que el servidor de Rails dirija las solicitudes a la dirección IP del contenedor en lugar de usar el localhost predeterminado.
