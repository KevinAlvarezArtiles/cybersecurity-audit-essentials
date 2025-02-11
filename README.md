# Auditoría de Seguridad - Estructura de Directorios

Este repositorio contiene un script en Bash diseñado para crear una estructura de directorios organizada para auditorías de seguridad, facilitando la recopilación y separación de información relevante por cliente/proyecto. El script crea un conjunto de directorios y archivos esenciales para cada fase de la auditoría, permitiendo un flujo de trabajo eficiente y estructurado.

## Funcionalidad del Script

El script realiza las siguientes tareas:

1. **Verificación del directorio base**: Asegura que el directorio base `/home/kali/Auditorias` exista. Si no existe, lo crea.
   
2. **Entrada del cliente/proyecto**: Solicita al usuario el nombre del cliente o proyecto para crear un directorio específico para esa auditoría.

3. **Creación de la estructura de directorios**: Crea una jerarquía de directorios que sigue las fases comunes de una auditoría de seguridad:
   - **00-Reconocimiento**: Para almacenar información sobre el reconocimiento, como subdominios, escaneos de red (Nmap), y resultados de búsquedas WHOIS.
   - **01-Enumeracion**: Para almacenar los resultados de la enumeración de servicios como SMB, LDAP, y escaneos DNS.
   - **02-Explotación**: Para guardar los exploits y las sesiones de Metasploit.
   - **03-PostExplotación**: Para almacenar información sobre la escalada de privilegios, movimiento lateral y métodos de persistencia.
   - **04-Reporte**: Para generar los informes finales, resúmenes de vulnerabilidades y recomendaciones.

4. **Creación de archivos vacíos**: El script también crea archivos vacíos dentro de cada directorio para organizar los resultados:
   - Archivos como `subdomains.txt`, `nmap_scan.txt`, `smb_enum.txt`, entre otros.

5. **Estructura por cliente**: Cada cliente/proyecto tiene su propia estructura de directorios y archivos, lo que facilita la organización y separación de las auditorías realizadas.

## Requisitos

Este script está diseñado para sistemas Linux, específicamente para ser utilizado en entornos como Kali Linux. No se requieren dependencias adicionales más allá del sistema operativo y Bash.

## Uso

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/tu-usuario/cybersecurity-audit-setup.git
   cd cybersecurity-audit-setup

2. **Ejecutar el script**:
   ```bash
   ./crear_estructura_auditoria.sh
Durante la ejecución, se pedirá que ingreses el nombre del cliente/proyecto para generar la estructura de directorios y archivos.

3. **Ejemplo de ejecución**:
    ```bash
   Introduce el nombre del cliente/proyecto:ClientePrueba
   ✅ Directorio base creado en: /home/kali/Auditorias
   ✅ Estructura de auditoría creada en: /home/kali/Auditorias/ClientePrueba

3. **Aclaraciones**:
El script proporciona solo una estructura básica para la organización de la auditoría. Dependiendo de las necesidades específicas de cada auditoría, los directorios y archivos pueden ser modificados o extendidos.
Es importante personalizar cada auditoría según los métodos y herramientas utilizados en cada fase del proceso.
El script organiza la información de forma estructurada, permitiendo la separación de las auditorías de distintos clientes dentro del mismo directorio base.

4. **Licencia**:
Este proyecto está bajo la Licencia MIT - consulta el archivo LICENSE para más detalles.
