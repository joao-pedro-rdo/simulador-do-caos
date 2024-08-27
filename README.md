# Simulador do Caos

### Variáveis de Ambiente

**SIGTERM_SECONDS**

Segundos para encerrar a aplicação

# Imagem para teste no Docker
Minha imagem está disponível em: https://hub.docker.com/repository/docker/joaoprdo/simulador-do-caos/

Imagem base em: https://hub.docker.com/r/kubedevio/simulador-do-caos

- Comando healthcheck  inline
```bash
docker container run -d -p 8080:3000  --health-cmd "curl -f http://localhost:3000/health" --health-timeout 5s --health-retries 3 --health-interval 10s --health-start-period 30s kubedevio/simulador-do-caos:v1
``` 

- Healthcheck imbutido no Dockerfile
```bash
 docker container run -d -p 8080:3000 --rm joaoprdo/simulador-do-caos:v2
 ```
