#!/bin/bash
# nome:(battery_all_parameters.sh)
# local:[/config/customize]
# atributo:{chmod +x customize/battery_all_parameters.sh}

#todos os parametros da bateria
#(report lido via JSON)

#---------------------

cat /sys/class/power_supply/BAT0/uevent | sed -n 's/^POWER_SUPPLY_//;s/=/\":\"/g;s/^/\"/;s/$/\",/;1h;1!H;${g;s/\n//g;s/\",\"$//;s/,}$//;s/^/[{/;s/,$//;s/$/}]/p}'
