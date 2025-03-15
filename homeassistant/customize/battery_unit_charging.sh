#!/bin/bash
# nome:(battery_unit_charging.sh)
# local:[/config/customize]
# atributo:{chmod +x customize/battery_unit_charging.sh}

#carga atual da bateria
#(converte: µA -> A)

echo $(( $(cat /sys/class/power_supply/BAT0/charge_now) /1000000 ))
