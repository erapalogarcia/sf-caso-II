# Build a JAR File
#Se crea la imagen base, y se le da un nombre a esta etapa con (As stage1)
FROM maven:3.6.3-jdk-8-slim AS stage1
#se crea la carpeta de trabajo
WORKDIR /home/app
#se copian los archivos necesarios
COPY . /home/app/
#se crea el jar de la aplicacion 
RUN mvn -f /home/app/pom.xml clean package

# Create an Image
#se crea la imagen base
FROM openjdk:8-jdk-alpine
#se expone en el puerto 5000
EXPOSE 5000
#se copia de la primera fase (stage1) el jar que se genero en ese directorio
COPY --from=stage1 /home/app/target/hello-world-java.jar hello-world-java.jar
#se indica que se ejecute
ENTRYPOINT ["sh", "-c", "java -jar /hello-world-java.jar"]
