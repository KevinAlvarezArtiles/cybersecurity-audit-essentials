#!/bin/bash
# Directorio base donde se guardarán las auditorías
BASE_DIR="/home/kali/Auditorias"

# Verificar si el directorio base existe, si no, crear
if [ ! -d "$BASE_DIR" ]; then
  mkdir -p "$BASE_DIR"
  echo "✅ Directorio base creado en: $BASE_DIR"
fi

# Pedir el nombre del cliente/proyecto
echo "Introduce el nombre del cliente/proyecto:"
read CLIENTE

# Crear la estructura dentro del directorio del cliente
mkdir -p "$BASE_DIR/$CLIENTE/00-Reconocimiento/screenshots"
mkdir -p "$BASE_DIR/$CLIENTE/01-Enumeracion/web_scan"
mkdir -p "$BASE_DIR/$CLIENTE/02-Explotacion/exploits"
mkdir -p "$BASE_DIR/$CLIENTE/02-Explotacion/metasploit_sessions"
mkdir -p "$BASE_DIR/$CLIENTE/03-PostExplotacion"
mkdir -p "$BASE_DIR/$CLIENTE/04-Reporte/evidencias"

# Crear directorios para cada archivo y los archivos vacíos correspondientes
mkdir -p "$BASE_DIR/$CLIENTE/00-Reconocimiento/subdomains" && touch "$BASE_DIR/$CLIENTE/00-Reconocimiento/subdomains/subdomains.txt"
mkdir -p "$BASE_DIR/$CLIENTE/00-Reconocimiento/nmap_scan" && touch "$BASE_DIR/$CLIENTE/00-Reconocimiento/nmap_scan/nmap_scan.txt"
mkdir -p "$BASE_DIR/$CLIENTE/00-Reconocimiento/whois" && touch "$BASE_DIR/$CLIENTE/00-Reconocimiento/whois/whois.txt"
mkdir -p "$BASE_DIR/$CLIENTE/01-Enumeracion/smb_enum" && touch "$BASE_DIR/$CLIENTE/01-Enumeracion/smb_enum/smb_enum.txt"
mkdir -p "$BASE_DIR/$CLIENTE/01-Enumeracion/ldap_enum" && touch "$BASE_DIR/$CLIENTE/01-Enumeracion/ldap_enum/ldap_enum.txt"
mkdir -p "$BASE_DIR/$CLIENTE/01-Enumeracion/dns_scan" && touch "$BASE_DIR/$CLIENTE/01-Enumeracion/dns_scan/dns_scan.txt"
mkdir -p "$BASE_DIR/$CLIENTE/02-Explotacion/credentials_dumped" && touch "$BASE_DIR/$CLIENTE/02-Explotacion/credentials_dumped/credentials_dumped.txt"
mkdir -p "$BASE_DIR/$CLIENTE/03-PostExplotacion/privilege_escalation" && touch "$BASE_DIR/$CLIENTE/03-PostExplotacion/privilege_escalation/privilege_escalation.txt"
mkdir -p "$BASE_DIR/$CLIENTE/03-PostExplotacion/lateral_movement" && touch "$BASE_DIR/$CLIENTE/03-PostExplotacion/lateral_movement/lateral_movement.txt"
mkdir -p "$BASE_DIR/$CLIENTE/03-PostExplotacion/persistence_methods" && touch "$BASE_DIR/$CLIENTE/03-PostExplotacion/persistence_methods/persistence_methods.txt"
mkdir -p "$BASE_DIR/$CLIENTE/04-Reporte/informe_final" && touch "$BASE_DIR/$CLIENTE/04-Reporte/informe_final/informe_final.md"
mkdir -p "$BASE_DIR/$CLIENTE/04-Reporte/resumen_vulnerabilidades" && touch "$BASE_DIR/$CLIENTE/04-Reporte/resumen_vulnerabilidades/resumen_vulnerabilidades.xlsx"
mkdir -p "$BASE_DIR/$CLIENTE/04-Reporte/recomendaciones" && touch "$BASE_DIR/$CLIENTE/04-Reporte/recomendaciones/recomendaciones.md"

# Mensaje de confirmación
echo "✅ Estructura de auditoría creada en: $BASE_DIR/$CLIENTE"
