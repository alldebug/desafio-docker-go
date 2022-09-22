# Desafio Full Cycle Docker com Golang

Desafio proposto, criar uma imagem do projeto em Go que imprime no console a mensagem: Full Cycle Rocks!

A imagem precisa ter menos de **2MB**

- Após uma pesquisa descobrir uma imagem do docker chamada **scratch**, utilizada para construir imagens do zero.
- Utilizando a técnica de **Multistage Building** para compilar o projeto e a imagem **scratch** para executar o binário do **GO**, temos como resultado uma imagem de **1.81MB**.

[Link para imagem no Docker Hub](https://hub.docker.com/r/allgurgel/codeeducation/tags)


