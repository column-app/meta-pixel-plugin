package com.columnapp.plugins.metapixel;

import android.util.Log;
import com.facebook.appevents.AppEventsLogger;


public class MetaPixel {

    public String getAnonymousID() {
        return AppEventsLogger.getAnonymousID();
    }
}
