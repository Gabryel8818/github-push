# Imagem de contêiner que executa seu código
FROM alpine:latest

RUN apk update && apk add curl git github-cli
# Copia o arquivo de código do repositório de ação para o caminho do sistema de arquivos `/` do contêiner
COPY entrypoint.sh /entrypoint.sh

# Arquivo de código a ser executado quando o contêiner do docker é iniciado (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
