# About

Flightgear VFR flight helper. Mostly helps with VFR flights offering map, route manager interface and helpers to get quickly to most common settings

# Running

- extract zip (if downloaded as a zip) to a given location. For example let's say we have /myfolder/addons/vfrnavigator with contents of the navigator addon.
- run flightgear with --addon directive. WARNING this is not "additional settings" window in the launcher ! you have to modify windows shortcut or linux startup script for example to looks like this (in linux):

Code:
```
    ./fgbin/bin/fgfs --fg-root=./fgdata --launcher --prop:/sim/fg-home=/myfolder/flightgear/fghome --addon="/myfolder/addons/vfrnavigator"
```

# Running

In main menu Position -> VFR Starter. When activated small window will appear in the upper right corner with links to most common used functions:

* MP - map - small map in lower left corner with route navigation, access to configuration (config button), zoom settings (buttons +/-) and quick action center on the aircraft (C button). On the bottom you can see information about current waypoint name, bearing (B), distance (D), ETA and wind direction/speed (W).
* PL - flightplan - in upper left corner
* SW - stopwatch
* R - radio panel
* A - ATC in ranges search
* RM - route manager activation


# History

- 1.0.0 - first public version on github


# Authors

- Slawek Mikula - source code

# Links

# License

GNU General Public License version 2
