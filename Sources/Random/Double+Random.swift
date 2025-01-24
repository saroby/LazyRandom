import Foundation

public extension Double {
    static func random() -> Double {
        return .random(in: 0...1000000)
    }
}
