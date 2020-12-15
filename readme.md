# About

Flightgear VFR flight helper. Helps with VFR flights by offering simplified map,
route manager interface and helpers to get quickly to most common settings.

# Running

* extract zip (if downloaded as a zip) to a given location. For example
  let's say we have /myfolder/addons/vfrnavigator with contents of the navigator
  addon.
* run flightgear with --addon directive as in the example below or use Launcher
  and go to "Add-Ons" section. There add this addon folder to Add-Ons and enable
  it (checkbox at the line of the addon).

Code:
```
  fgfs --fg-root=./fgdata --launcher --prop:/sim/fg-home=/myfolder/flightgear/fghome --addon="/myfolder/addons/vfrnavigator"
```

# Running

In main menu Position -> VFR Starter. When activated small window will appear
in the upper right corner with links to most common used functions. More info
in the document `usage` in the doc folder.

# History

* 1.0.0 - first public version on github
* 1.1.0 - structure and initialization changes according to add-ons API manual,
          usage documentation

# Authors

* Slawek Mikula - source code

# License

GNU General Public License version 2
