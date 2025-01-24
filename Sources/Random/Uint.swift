import Foundation

extension UInt {
    func random(bounce: UInt) -> UInt {
        UInt.random(in: 0...bounce)
    }
}
