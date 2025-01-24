import Foundation

public extension Int {
    static func random() -> Int {
        return .random(in: 0...1000000)
    }
    
    static func random(bound: Int) -> Int {
        assert(bound != 0)
        let range = bound >= 0 ? 1...bound : bound...(-1)
        return Int.random(in: range)
    }
}
