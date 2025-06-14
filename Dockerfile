FROM eclipse-temurin:17-jdk-alpine

RUN addgroup -S spring && adduser -S spring -G spring

WORKDIR /app

# Copia el JAR desde la ruta correcta
COPY app/microserver-buscahipotecas/target/app.jar .

USER spring:spring

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]