#
# VFR Navigator addon
#
# Slawek Mikula, August 2018

var main = func( addon ) {
    var root = addon.basePath;
    var my_addon_id  = "com.slawekmikula.flightgear.VfrNavigator";
    var my_version   = getprop("/addons/by-id/" ~ my_addon_id ~ "/version");
    var my_root_path = getprop("/addons/by-id/" ~ my_addon_id ~ "/path");
    var my_settings_root_path = "/addons/by-id/" ~ my_addon_id ~ "/addon-devel/";

    # persistent save of enable flag
    props.globals.getNode(my_settings_root_path ~ "/showvfrstarter", 1).setAttribute("userarchive", "y");

    var fdm_init_listener = _setlistener("/sim/signals/fdm-initialized", func {
        removelistener(fdm_init_listener);

        if (getprop(my_settings_root_path ~ "/showvfrstarter") == 1) {
            gui.showDialog("vfrstarter");
        }
    });

    var reinit_listener = _setlistener("/sim/signals/reinit", func {
        removelistener(reinit_listener);

        if (getprop(my_settings_root_path ~ "/showvfrstarter") == 1) {
            gui.showDialog("vfrstarter");
        }
    });
}
