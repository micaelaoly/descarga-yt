#!/bin/bash

#Función para comprobar e instalar dependencias necesarias
check_dependencies() {
    if ! command -v yt-dlp &> /dev/null
    then
        echo "yt-dlp no está instalado. Instalando..."
        sudo apt update && sudo apt install -y yt-dlp
    fi

    if ! command -v ffmpeg &> /dev/null
    then
        echo "ffmpeg no está instalado. Instalando..."
        sudo apt update && sudo apt install -y ffmpeg
    fi
}

#Pedimos la URL de YouTube al usuario
echo "Introduce la URL del video de YouTube:"
read -r video_url

#Mostramos los formatos disponibles para el audio y el video
echo "Obteniendo información de los formatos disponibles..."
yt-dlp -F "$video_url"

#Elegimos el formato de audio preferible
echo "Introduce el código del formato de audio (por ejemplo, 140 para m4a):"
read -r audio_format_code

#Elegir formato de video preferible
echo "Introduce el código del formato de video (por ejemplo, 137 para 1080p):"
read -r video_format_code

#Descargamos el audio y video en los formatos seleccionados
echo "Descargando el audio..."
yt-dlp -f "$audio_format_code" "$video_url" -o "audio.mp3"

echo "Descargando el video..."
yt-dlp -f "$video_format_code" "$video_url" -o "video.mp4"

# Eliminamos el audio del video (extraer solo video sin audio)
echo "Extrayendo video sin audio..."
ffmpeg -i "video.mp4" -an -c:v copy "video_no_audio.mp4"

#Mostramos información del audio y del video generado
echo "Información del archivo de audio:"
ffmpeg -i "audio.mp3" 2>&1 | grep "Duration"

echo "Información del archivo de video sin audio:"
ffmpeg -i "video_no_audio.mp4" 2>&1 | grep "Duration"

#Confirmación final
echo "¡Proceso completado con éxito!"
echo "Se han generado los siguientes archivos:"
echo "- audio.mp3 (solo audio)"
echo "- video_no_audio.mp4 (video sin audio)"
