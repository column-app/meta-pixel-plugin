import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MetaPixelPlugin)
public class MetaPixelPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "MetaPixelPlugin"
    public let jsName = "MetaPixel"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getAnonymousID", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = MetaPixel()

    @objc func getAnonymousID(_ call: CAPPluginCall) {
        call.resolve(["value": implementation.getAnonymousID()])
    }
}
