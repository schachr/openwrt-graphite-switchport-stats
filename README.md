# openwrt-graphite-switchport-stats
OpenWrt/LEDE Switchport stats to Graphite

This script parses the output of all switchports for all metrics via `swconfig` and sends tem to graphite.
Please adjust the variables
+ `_graphiteprefix`
+ `_graphitehost`
+ `_graphiteport`

... at the beginning of the file to match your environment.


##

Copyright (c)2017 by [schachr](https://github.com/schachr)

This script comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it
under certain conditions. See CC BY-NC-SA 4.0 for details.
https://creativecommons.org/licenses/by-nc-sa/4.0/
