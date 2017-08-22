# openwrt-graphite-switchport-stats
OpenWrt/LEDE Switchports to Graphite

This script parses the output of `swconfig` and sends it to graphite.
Please adjust the variables
+ `_prefix`
+ `_graphitehost`
+ `_graphiteport`

... at the beginning of the file to match your environment.
