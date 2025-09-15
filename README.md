# 🌐 Eureka Server

## 📋 Descripción

Servidor de descubrimiento de servicios para la arquitectura de microservicios del gimnasio (Puerto 8761). Permite el registro automático y descubrimiento de todos los microservicios del sistema.

## ✨ Características

- Registro automático de microservicios
- Descubrimiento de servicios para el Gateway
- Health checks de servicios registrados
- Balanceeo de carga automático
- **Interfaz web**: `http://localhost:8761`

## 🔗 Servicios Registrados

Al ejecutar el sistema completo, verás estos servicios registrados:

- `GATEWAY` (Puerto 8087)
- `MEMBER-MICROSERVICE` (Puerto 8081)
- `COACH-MICROSERVICE` (Puerto 8082)
- `EQUIPMENT-MICROSERVICE` (Puerto 8083)
- `CLASS-MICROSERVICE` (Puerto 8084)
- `NOTIFICATION-MICROSERVICE` (Puerto 8085)
- `PAYMENT-MICROSERVICE` (Puerto 8086)

## ⚙️ Configuración

- **Self-preservation mode**: Deshabilitado para desarrollo
- **Eviction interval**: 1 segundo
- No se registra a sí mismo como cliente
- Configuración optimizada para desarrollo local

## 🛠️ Tecnologías

- Spring Boot
- Spring Cloud Netflix Eureka Server
