import Foundation

public extension Float {
    static func random() -> Float {
        return .random(in: 0...1000000)
    }
}
