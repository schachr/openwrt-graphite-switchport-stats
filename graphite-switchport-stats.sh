#!/bin/sh

# please use your graphite preferences here
_prefix="schachr"
_graphitehost="graphitehost.example.com"
_graphiteport="2003"

# dynamically generated
_hostname=$(uci get system.@system[0].hostname | tr '[A-Z]' '[a-z]')
_date=$(date +%s)

# data gathering
for port in $(swconfig dev switch0 show | egrep "^Port [0-9]:$" | cut -f2 -d" " | sed 's/://') ; do
	swconfig dev switch0 port $port show | egrep " : [0-9]" | sed 's/ *: / /' | sed 's/ (.* .*)//g' | while read -r line ; do
		graphiteline="$_prefix."$_hostname".swconfig.port"$port"."$line" "$_date

                # sending to graphite with stdout on a interactive shell only
                if [ -t 1 ] ; then
                    echo $graphiteline
                    echo $graphiteline | nc $_graphitehost $_graphiteport
                else
                    echo $graphiteline | nc $_graphitehost $_graphiteport > /dev/null 2>&1
                fi

	done
done
