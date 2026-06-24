# 🌿 EcoVerde Antioquia S.A.S. — Entorno Dockerizado

Proyecto desarrollado por aprendices ADSO del SENA como solución técnica
para el despliegue web institucional de EcoVerde Antioquia S.A.S.

---

## 📋 Descripción del proyecto

EcoVerde presentaba dificultades frecuentes: aplicaciones que funcionaban
en un equipo pero fallaban en otro, configuraciones manuales inconsistentes
y poca trazabilidad del proceso. Este entorno Dockerizado resuelve esos
problemas mediante contenedores reproducibles, red personalizada, volumen
persistente y automatización con Docker Compose.

---

## 🗂️ Estructura del proyecto

proyecto-ecoverde/
├── app/
│   └── index.html        # Página web institucional
├── evidencias/           # Capturas del proceso
├── Dockerfile            # Imagen personalizada basada en nginx:alpine
├── compose.yml           # Orquestación de servicios
└── README.md             # Este archivo

---

## 🐳 Tecnologías utilizadas

- Docker + Docker Compose
- nginx:alpine (servidor web)
- Git + GitHub (control de versiones)
- HTML5 + CSS3 (página institucional)

---

## ⚙️ Comandos principales utilizados

### Construcción de la imagen
```bash
docker build -t ecoverde-web .
```

### Levantar el entorno completo
```bash
docker compose up -d
```

### Ver contenedores activos
```bash
docker ps
docker compose ps
```

### Ver volumen creado
```bash
docker volume ls
```

### Ver red creada
```bash
docker network ls
```

### Historial de commits
```bash
git log --oneline
```

### Bajar el entorno
```bash
docker compose down
```

---

## 🌐 Acceso a la aplicación

Una vez levantado el entorno, abrir en el navegador:
http://localhost:8080

---

## 🔧 Servicios definidos en compose.yml

| Servicio | Imagen | Puerto | Función |
|---|---|---|---|
| web | ecoverde-web | 8080:80 | Sirve la página institucional |
| monitor | busybox | — | Simula monitoreo del servicio web |

---

## 📦 Volumen

`ecoverde_web-content` — Persiste los archivos HTML más allá
del ciclo de vida del contenedor.

## 🌐 Red

`ecoverde_ecoverde-net` — Red bridge personalizada que conecta
los servicios web y monitor.

---

## 👥 Equipo

- Esteban — Aprendiz ADSO, SENA Centro CTMA
- Miguel Ángel Ocampo Muñoz — Aprendiz ADSO, SENA Centro CTMA

**Instructor:** Wilson
**Programa:** Tecnología en Análisis y Desarrollo de Software
**Centro:** CTMA — SENA Antioquia