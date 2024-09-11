# Use uma imagem base do Ubuntu
FROM ubuntu:20.04

# Definir variáveis de ambiente para não precisar de interação do usuário durante a instalação de pacotes
ENV DEBIAN_FRONTEND=noninteractive

# Atualizar os pacotes e instalar dependências necessárias
RUN apt-get update && \
    apt-get install -y \
    flatpak \
    flatpak-builder \
    ostree \
    git \
    make \
    gcc \
    curl \
    openjdk-17-jdk \
    gradle \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Adicionar o repositório Flathub
RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## Instalar o SDK e o runtime necessários
RUN flatpak install -y flathub org.freedesktop.Platform//21.08 org.freedesktop.Sdk//21.08
#
## Criar o diretório de trabalho
#WORKDIR /workspace
#
## Copiar os arquivos do projeto Kotlin para o contêiner
#COPY . .
#
## Compilar o projeto Kotlin Multiplataforma
#RUN gradle build
#
## Executar o flatpak-builder para criar o pacote Flatpak
#RUN flatpak-builder --repo=my-kotlin-app-repo build-dir com.example.MyKotlinApp.json

# Definir o comando padrão
CMD ["/bin/bash"]
