# Incidencia de entorno

Docker Desktop no pudo ejecutarse en el equipo local (Windows 11 Pro 23H2, build 22631.2861).

- Docker Desktop: "failed to start because virtualisation support was not detected"
- WSL: ERROR_VIRTDISK_PROVIDER_NOT_FOUND al instalar una distribucion
- Ausentes en el sistema: vhdmp.sys, bcdedit.exe, wsl.exe (en System32)
- sfc /scannow: no pudo iniciar el servicio de reparacion
- DISM /RestoreHealth finalizo sin reponer los componentes

Solucion adoptada: ejecutar la solucion en GitHub Codespaces (Docker Engine real, mismo comando docker compose up --build).
