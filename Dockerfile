# Multi-stage Docker build for Eureka Server

# Stage 1: Build
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Copy all POM files
COPY parent/pom.xml /app/parent/pom.xml
COPY eureka-server/pom.xml /app/eureka-server/pom.xml

# Install parent POM
RUN cd /app/parent && mvn install -N

# Download microservice dependencies
RUN mkdir -p /app/eureka-server/src/main/java/temp && \
    echo "public class Temp {}" > /app/eureka-server/src/main/java/temp/Temp.java

RUN cd /app/eureka-server && mvn dependency:go-offline -DskipTests

# Clean temp files
RUN rm -rf /app/eureka-server/src/main/java/temp

# Build eureka server
COPY eureka-server/src /app/eureka-server/src
RUN cd /app/eureka-server && mvn clean package -DskipTests

# Stage 2: Runtime
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy JAR from build stage
COPY --from=build /app/eureka-server/target/eureka-server-*.jar app.jar

# Expose port
EXPOSE 8761

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]
