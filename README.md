# Serviço de consulta ao SCR

## Considerações
A aplicação em questão foi desenvolvida utilizando o Python 3.7 e servida utilizando o
 Falcon web framework.


## Docker
Já que a aplicação foi dockerizada, inicie o processo obtendo o Docker Image produzido:

```docker pull ettoreaquino/scr-service:latest```

Uma vez carregada a imagem inicie a aplicação executando:

### Debuging mode
```docker container run -it -p 3000:3000 --rm --name scr-service -e FALCON_DEBUG=true -v $PWD:/app ettoreaquino/scr-service```

### Production mode
```docker container run -it -p 3000:3000 --rm --name scr-service ettoreaquino/scr-service```
