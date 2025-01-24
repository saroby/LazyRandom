import Testing
import Foundation
@testable import Random

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    print(Date.random(.days(10)))
    print(Date.random(.days(-10)))
}
