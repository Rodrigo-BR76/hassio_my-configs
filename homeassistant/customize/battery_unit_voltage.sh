#!/bin/bash
# nome:(battery_unit_voltage.sh)
# local:[/config/customize]
# atributo:{chmod +x customize/battery_unit_voltage.sh}

#voltagem atual da bateria
#(converte: µV -> V)

echo $(( $(cat /sys/class/power_supply/BAT0/voltage_now) /1000000 ))
