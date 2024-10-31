# Proyecto de Pruebas con Karate

Este proyecto utiliza Karate para realizar pruebas sobre la API de PetStore. Contiene escenarios para crear, buscar, actualizar y eliminar un usuario.

## Requisitos

- **Java 8 o superior**: Asegúrate de que `JAVA_HOME` esté configurado.
- **Maven**: Necesario para compilar y ejecutar las pruebas.

## Configuración del Proyecto

1. Clona este repositorio o descarga el código fuente en tu entorno local.

   ```bash
   git clone <https://github.com/kadmel777/Reto-karate.git>

## Configuración del Proyecto

2. Navega al directorio del proyecto.

   ```bash
   cd <retoKarate>

3. Construye el proyecto: Asegúrate de que tu terminal esté en la raíz del proyecto y ejecuta:
   ```bash
   mvn clean install
   
4. Ejecuta las pruebas: Para ejecutar las pruebas de Karate, utiliza el siguiente comando:
   ```bash
    mvn clean test
   
5. Verifica los resultados: Después de ejecutar las pruebas, revisa el informe generado en target/karate-reports/karate-summary.html. Puedes abrir este archivo en un navegador para ver un resumen de las pruebas ejecutadas.

### Archivos de Característica

user.feature: Contiene pruebas para crear, buscar, actualizar y eliminar un usuario en la API de PetStore.
 
