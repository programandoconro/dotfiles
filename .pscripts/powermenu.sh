#!/bin/sh

OPC=$(printf "Apagar\nReiniciar\nCerrar sesión" | rofi -dmenu -p "Menú de energía")

case $OPC in
	"Apagar")
		YN=$(printf "Sí\nNo" | rofi -dmenu -p "Seguro que quieres apagar el equipo?")
		if [ "$YN" = "Sí" ]; then
			notify-send -t 3000 "Apagando equipo..."
			sleep 3
			shutdown now
		elif [ "$YN" = "No" ]; then
			notify-send -t 3000 "Se canceló el apagado del equipo"
			exit
		fi
		;;
	"Reiniciar")
		YN=$(printf "Sí\nNo" | rofi -dmenu -p "Seguro que quieres reiniciar el equipo?")
		if [ "$YN" = "Sí" ]; then
			notify-send -t 3000 "Reiniciando el equipo..."
			sleep 3
			reboot
		elif [ "$YN" = "No" ]; then
			notify-send -t 3000 "Se canceló el reinicio del equipo"
			exit
		fi
		;;
	"Cerrar sesión")
		YN=$(printf "Sí\nNo" | rofi -dmenu -p "Seguro que quieres cerrar sesión?")
		if [ "$YN" = "Sí" ]; then
			notify-send -t 3000 "Cerrando sesión..."
			sleep 3
			i3-msg exit
		elif [ "$YN" = "No" ]; then
			notify-send -t 3000 "Se canceló el cierre de sesión"
			exit
		fi
		;;
esac

