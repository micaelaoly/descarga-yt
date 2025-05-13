# Script de Descarga de Vídeos de YouTube con Audio y Video Separados

Este script permite **descargar un vídeo de YouTube** y separarlo en **dos archivos**:
1. **Audio en formato MP3**.
2. **Vídeo sin audio**.

El script utiliza `yt-dlp` para descargar el contenido y `ffmpeg` para extraer el vídeo sin sonido.


## Requisitos previos
Para usar el script, necesitas tener instalados dos programas en tu sistema:

1. **yt-dlp**: una herramienta para descargar vídeos de YouTube.
2. **ffmpeg**: una herramienta para trabajar con archivos de audio y vídeo.

Si no tienes estos programas instalados, el script los instalará automáticamente cuando lo ejecutes.


## ¿Cómo funciona el script?

1. El script primero **comprueba si tienes los programas necesarios** (`yt-dlp` y `ffmpeg`) instalados. Si no están, los instalará automáticamente.
2. Luego, te pedirá que introduzcas la **URL del vídeo de YouTube** que quieres descargar.
3. El script mostrará una lista con los **formatos disponibles** para el vídeo y el audio. Te pedirá que elijas el formato de audio (por ejemplo, `140` para `m4a`) y el formato de vídeo (por ejemplo, `137` para 1080p).
4. Descargará el **audio** y el **vídeo** en los formatos seleccionados.
5. Después, extraerá el **vídeo sin audio**.
6. Finalmente, te mostrará la **duración** de los archivos descargados (tanto del audio como del vídeo sin audio) y te informará cuando el proceso haya terminado.


## Pasos para usar el script

1. **Instalar dependencias** (si no las tienes):
   El script instalará `yt-dlp` y `ffmpeg` si no los tienes. Pero si prefieres hacerlo manualmente, puedes usar los siguientes comandos:
   
   ```bash
   sudo apt update
   sudo apt install -y yt-dlp ffmpeg

2. **Dar permisos de ejecución**:
   ```bash
   sudo chmod +x descarga_yt.sh
  
3. **Uso del script**: 
   ./descarga_yt.sh

   
