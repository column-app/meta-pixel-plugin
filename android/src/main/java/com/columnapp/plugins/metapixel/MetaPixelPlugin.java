package com.columnapp.plugins.metapixel;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "MetaPixel")
public class MetaPixelPlugin extends Plugin {

    private MetaPixel implementation = new MetaPixel();

    @PluginMethod
    public void getAnonymousID(PluginCall call) throws NoSuchMethodException {
        JSObject ret = new JSObject();
        ret.put("value", implementation.getAnonymousID());
        call.resolve(ret);
    }
}
