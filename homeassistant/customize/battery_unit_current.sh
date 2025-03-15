#!/bin/bash
# nome:(battery_unit_current.sh)
# local:[/config/customize]
# atributo:{chmod +x customize/battery_unit_current.sh}

#corrente elétrica atual que está sendo fornecida ou consumida pela bateria
#(converte: µA -> mA)

echo $(( $(cat /sys/class/power_supply/BAT0/current_now) /1000 ))
