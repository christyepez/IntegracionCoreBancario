# IntegracionCoreBancario


# Instrucciones para Visualizar Archivos ADL

Este repositorio incluye modelos de arquitectura definidos en formato ADL (Architectural Description Language). Para visualizar y trabajar con estos archivos, sigue los pasos a continuación:

## Prerrequisitos

1. **Java Runtime Environment (JRE):**
   - Asegúrate de tener instalada la versión 8 o superior del JRE en tu sistema.
   - Descarga e instala desde [java.com](https://www.java.com).

2. **PlantUML:**
   - PlantUML es necesario para renderizar diagramas. Puedes usar la versión de línea de comandos o integrarlo con un editor.

3. **Editor de Texto/IDE con soporte para ADL:**
   - **Structurizr Lite** (recomendado): Una herramienta ligera que permite visualizar los modelos C4 definidos en ADL.
     - Descarga Structurizr Lite desde [structurizr.com](https://structurizr.com/help/lite).
   - Otros editores compatibles: Visual Studio Code con extensiones para PlantUML o ADL.

---

## Pasos para Visualizar Archivos ADL

### Opción 1: Usando Structurizr Lite
1. **Descarga y descomprime Structurizr Lite** desde el sitio oficial.
2. Coloca los archivos `.adl` en la misma carpeta donde descomprimiste Structurizr Lite.
3. Ejecuta Structurizr Lite:
   ```bash
   java -jar structurizr-lite.jar
   ```
4. Abre un navegador web e ingresa a `http://localhost:8080`.
5. Selecciona el archivo ADL que deseas visualizar.

### Opción 2: Usando PlantUML
1. Instala PlantUML como se indica en [plantuml.com](https://plantuml.com).
2. Utiliza un editor como Visual Studio Code con la extensión "PlantUML" para renderizar los diagramas.
3. Abre el archivo `.adl` y genera los diagramas en formato PNG o SVG:
   ```bash
   java -jar plantuml.jar archivo.adl
   ```

### Opción 3: Integración con IDE
- Utiliza un IDE como IntelliJ IDEA o Visual Studio Code con extensiones para PlantUML o ADL.
- Configura las extensiones para reconocer el formato ADL.
- Abre el archivo en el editor y genera los diagramas directamente desde el IDE.

---

## Solución de Problemas

- **Error "Java no encontrado":**
  - Verifica que Java esté instalado y configurado correctamente en el PATH del sistema.

- **Archivos no renderizan:**
  - Asegúrate de que el formato ADL sea válido y compatible con las herramientas mencionadas.

- **Puertos bloqueados:**
  - Si usas Structurizr Lite y el puerto 8080 está en uso, libera el puerto o cambia la configuración del servidor.

---

## Recursos Adicionales
- [Documentación de Structurizr](https://structurizr.com/help)
- [Guía de PlantUML](https://plantuml.com/guide)

Si tienes dudas o problemas, abre un issue en este repositorio o contacta al administrador del proyecto.
