import Foundation
import FBSDKLoginKit

@objc public class MetaPixel: NSObject {
    @objc public func getAnonymousID() -> String {
        return FBSDKLoginKit.AppEvents.shared.anonymousID
    }
}
