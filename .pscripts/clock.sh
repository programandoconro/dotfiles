#!/bin/sh

HOUR=$(date "+%H")
MINUTES=$(date "+%M")

case $HOUR in
	"01"|"13")
		CLOCK="🔋"
		;;
	"02"|"14")
		CLOCK="🕑"
		;;
	"03"|"15")
		CLOCK="🕒"
		;;
	"04"|"16")
		CLOCK="🕓"
		;;
	"05"|"17")
		CLOCK="🕔"
		;;
	"06"|"18")
		CLOCK="🕕"
		;;
	"07"|"19")
		CLOCK="🕖"
		;;
	"08"|"20")
		CLOCK="🕗"
		;;
	"09"|"21")
		CLOCK="🕘"
		;;
	"10"|"22")
		CLOCK="🕙"
		;;
	"11"|"23")
		CLOCK="🕛"
		;;
	"12"|"00")
		CLOCK="🕛"
		;;
esac

printf "%s %s:%s\n\n" "$CLOCK" "$HOUR" "$MINUTES"

