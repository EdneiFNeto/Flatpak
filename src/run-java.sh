#!/bin/sh
exec java -jar /app/bin/my-java-app.jar

# Definir permissões para o arquivo .jar
echo "Definindo permissões para my-java-app.jar..."
chmod 644 my-java-app.jar
# Definir permissões para o script de execução
echo "Definindo permissões para run-java.sh..."
chmod +x run-java.sh

echo "Permissões definidas com sucesso."
