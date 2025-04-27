import Foundation

@objc public class MetaPixel: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
