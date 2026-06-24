# Portal EcoVerde Antioquia 🌿

Solución DevOps mínima y documentada para la modernización del despliegue de software de EcoVerde Antioquia S.A.S. como parte del programa ADSO - SENA Centro CTMA.

## Descripción del proyecto

EcoVerde Antioquia S.A.S. necesitaba modernizar su forma de entregar software. Anteriormente los despliegues eran manuales, sin trazabilidad de cambios ni entornos consistentes. Este proyecto implementa una solución DevOps completa que cubre desde cultura DevOps hasta observabilidad básica.

## Tecnologías utilizadas

- **Docker** - Contenedores y construcción de imagen
- **Docker Compose** - Orquestación de servicios locales
- **GitHub Actions** - Pipeline CI/CD automatizado
- **Kubernetes** - Manifiestos de despliegue en clúster
- **Terraform** - Infraestructura como Código (IaC)
- **Nginx** - Servidor web dentro del contenedor
- **Git** - Control de versiones

## Estructura del repositorio
proyecto-ecoverde/

├── README.md

├── Dockerfile

├── compose.yml

├── .gitignore

├── app/

│   └── index.html

├── .github/

│   └── workflows/

│       └── pipeline.yml

├── k8s/

│   ├── deployment.yaml

│   └── service.yaml

├── iac/

│   └── main.tf

├── observabilidad/

│   └── evidencias.md

└── evidencias/

├── git-log.png

├── docker-ps.png

├── actions.png

├── kubectl-get-pods.png

└── logs-metricas.png

## Cómo ejecutar

### Requisitos previos

- Docker Desktop instalado
- Git instalado
- (Opcional) kubectl para Kubernetes
- (Opcional) Terraform para IaC

### Con Docker Compose

```bash
# Clonar el repositorio
git clone https://github.com/esteban01Br/EcoVerde.git
cd EcoVerde/proyecto-ecoverde

# Levantar servicios
docker compose up -d

# Ver logs
docker compose logs -f

# Ver estado
docker compose ps

# Detener servicios
docker compose down
```

### Solo con Docker

```bash
# Construir imagen
docker build -t ecoverde-app:latest .

# Ejecutar contenedor
docker run -d -p 8080:80 --name ecoverde-app ecoverde-app:latest

# Ver logs
docker logs -f ecoverde-app

# Ver métricas
docker stats ecoverde-app
```

La aplicación queda disponible en: `http://localhost:8080`

## CI/CD con GitHub Actions

El pipeline `.github/workflows/pipeline.yml` se ejecuta automáticamente en cada push a `main` y realiza:

1. ✅ Checkout del código fuente
2. ✅ Validación de archivos obligatorios
3. ✅ Build de la imagen Docker
4. ✅ Verificación de que el contenedor arranca y responde
5. ✅ Resumen del pipeline con rama, commit y actor

## Manifiestos Kubernetes

```bash
# Aplicar todos los manifiestos
kubectl apply -f k8s/

# Ver pods corriendo
kubectl get pods

# Ver servicios
kubectl get services

# Ver detalle del deployment
kubectl describe deployment ecoverde-deployment
```

## Infraestructura como Código - Terraform

```bash
# Entrar a la carpeta
cd iac/

# Inicializar Terraform
terraform init

# Ver plan de ejecución
terraform plan

# Aplicar configuración
terraform apply
```

## Observabilidad

### Logs en tiempo real

```bash
docker logs -f ecoverde-app
docker compose logs -f
```

### Métricas de CPU y memoria

```bash
docker stats ecoverde-app
```

### Estado del healthcheck

```bash
docker inspect --format='{{.State.Health.Status}}' ecoverde-app
```

Ver más detalles en `observabilidad/evidencias.md`.

## Evidencias

Las capturas de pantalla que evidencian el funcionamiento del proyecto se encuentran en la carpeta `evidencias/`:

| Evidencia | Descripción |
|-----------|-------------|
| `git-log.png` | Historial de commits con `git log --oneline` |
| `docker-ps.png` | Contenedores corriendo con `docker ps` |
| `actions.png` | Pipeline ejecutado en GitHub Actions |
| `kubectl-get-pods.png` | Pods corriendo en Kubernetes |
| `logs-metricas.png` | Logs y métricas del contenedor |

## Conclusiones

- **Docker** garantiza entornos consistentes y reproducibles, eliminando el problema de "en mi máquina funciona".
- **GitHub Actions** automatiza la validación y build en cada cambio, reduciendo errores humanos.
- **Los manifiestos de Kubernetes** permiten escalar la aplicación de forma declarativa sin intervención manual.
- **Terraform** versiona la configuración de infraestructura, haciendo los entornos auditables y repetibles.
- **Los logs y métricas** de Docker permiten observar el estado del servicio en tiempo real, mejorando la capacidad de respuesta ante incidentes.

## Autor

**Esteban Bedoya Rojo**  
Programa: Tecnología en Análisis y Desarrollo de Software (ADSO)  
Centro: SENA Centro CTMA - Antioquia  
Instructor: Juan Carlos Quintero Romero  
Año: 2026
