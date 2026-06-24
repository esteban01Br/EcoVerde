# Observabilidad - Portal EcoVerde Antioquia

## 1. Logs del contenedor

Para ver los logs en tiempo real:

```bash
docker logs -f ecoverde-app
docker compose logs -f
```

Ejemplo de salida esperada:
ecoverde-app  | /docker-entrypoint.sh: Configuration complete; ready for start up

ecoverde-app  | 172.18.0.1 - - [GET /] "200" "-"

## 2. Métricas básicas del contenedor

```bash
# Ver uso de CPU y memoria
docker stats ecoverde-app

# Ver procesos dentro del contenedor
docker top ecoverde-app
```

## 3. Estado de los servicios

```bash
# Ver contenedores corriendo
docker ps

# Ver con Docker Compose
docker compose ps
```

## 4. Healthcheck

El Dockerfile incluye un healthcheck que verifica cada 30s que nginx responda en el puerto 80.

```bash
# Ver estado del healthcheck
docker inspect --format='{{.State.Health.Status}}' ecoverde-app
```

## 5. Evidencias capturadas

| Evidencia | Archivo |
|-----------|---------|
| Historial de commits | `evidencias/git-log.png` |
| Contenedores corriendo | `evidencias/docker-ps.png` |
| Pipeline Actions | `evidencias/actions.png` |
| Pods Kubernetes | `evidencias/kubectl-get-pods.png` |
| Logs y métricas | `evidencias/logs-metricas.png` |