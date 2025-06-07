FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/app.jar app.jar
RUN adduser -D spring
USER spring
EXPOSE 8080
ENTRYPOINT ["java", "-XX:+UseContainerSupport", "-XX:MaxRAMPercentage=80.0", "-XX:+TieredCompilation", "-XX:TieredStopAtLevel=1", "-jar", "app.jar"]
