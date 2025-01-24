import Foundation

public extension Date {
    private static let defaultSecondBounce = 60
    private static let defaultMinuteBounce = 60
    private static let defaultDayeBounce = Calendar.current.range(of: .day, in: .month, for: .now)!.count
    private static let defaultMonthBounce = 12
    private static let defaultYearBounce = 100
    
    enum Time {
        case seconds(_ bound: Int? = nil)
        case minutes(_ bound: Int? = nil)
        case days(_ bound: Int? = nil)
        case monthes(_ bound: Int? = nil)
        case year(_ bound: Int? = nil)
    }
    
    static func random(_ time: Time) -> Date {
        switch time {
        case .seconds(let bound):
            let bound = bound ?? defaultSecondBounce
            assert(bound != 0)
            return Calendar.current.date(byAdding: .second, value: .random(bound: bound), to: .now) ?? .now
        case .minutes(let bound):
            let bound = bound ?? defaultMinuteBounce
            assert(bound != 0)
            return Calendar.current.date(byAdding: .minute, value: .random(bound: bound), to: .now) ?? .now
        case .days(let bound):
            let bound = bound ?? defaultDayeBounce
            assert(bound != 0)
            return Calendar.current.date(byAdding: .day, value: .random(bound: bound), to: .now) ?? .now
        case .monthes(let bound):
            let bound = bound ?? defaultMonthBounce
            assert(bound != 0)
            return Calendar.current.date(byAdding: .month, value: .random(bound: bound), to: .now) ?? .now
        case .year(let bound):
            let bound = bound ?? defaultYearBounce
            assert(bound != 0)
            return Calendar.current.date(byAdding: .year, value: .random(bound: bound), to: .now) ?? .now
        }
    }
    
    static func random() -> Date {
        let time = [
            Time.seconds(),
            Time.seconds(-defaultSecondBounce),
            Time.minutes(),
            Time.minutes(-defaultMinuteBounce),
            Time.days(),
            Time.days(-defaultDayeBounce),
            Time.monthes(),
            Time.monthes(-defaultMonthBounce),
            Time.year(),
            Time.year(-defaultYearBounce),
        ].randomElement()!
        return random(time)
    }
}
