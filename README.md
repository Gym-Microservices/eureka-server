# 🌐 Eureka Server

## 📋 Descripción

Servidor de descubrimiento de servicios para la arquitectura de microservicios del gimnasio (Puerto 8761). Permite el registro automático y descubrimiento de todos los microservicios del sistema.

## ✨ Características

- Registro automático de microservicios
- Descubrimiento de servicios
- Health checks de servicios registrados
- Interfaz web de administración disponible en `http://localhost:8761`

## ⚙️ Configuración

- **Self-preservation mode**: Deshabilitado para desarrollo
- **Eviction interval**: 1 segundo
- No se registra a sí mismo como cliente

## 🛠️ Tecnologías

- Spring Boot
- Spring Cloud Netflix Eureka Server
