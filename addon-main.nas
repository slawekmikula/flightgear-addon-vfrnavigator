#
# Starter addon
#
# Slawek Mikula, August 2018

var main = func( addon ) {
    var root = addon.basePath;
    var my_addon_id  = "com.slawekmikula.flightgear.VfrNavigator";
    var my_version   = getprop("/addons/by-id/" ~ my_addon_id ~ "/version");
    var my_root_path = getprop("/addons/by-id/" ~ my_addon_id ~ "/path");

    var dialogs   = ["vfrmap-settings", "vfrmap", "vfrstarter", "vfrtable"];

    forindex (var i; dialogs) {
      gui.Dialog.new("/sim/gui/dialogs/" ~ dialogs[i] ~ "/dialog", my_root_path ~ "/gui/" ~ dialogs[i] ~ ".xml");
    }

    var data = {
	    label   : "VFR Starter",
      name    : "vfrstarter",
      binding : { command : "dialog-show", "dialog-name" : "vfrstarter" },
      enabled : "true",
	  };

    foreach(var item; props.getNode("/sim/menubar/default/menu[2]").getChildren("item")) {
      if (item.getValue("name") == "vfrstarter") {
  		    return;
      }
    }

	  props.globals.getNode("/sim/menubar/default/menu[2]").addChild("item").setValues(data);

	  fgcommand("gui-redraw");
}
