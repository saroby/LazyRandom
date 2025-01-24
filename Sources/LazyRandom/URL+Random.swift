import Foundation

public extension URL {
    enum URLRandom {
        case userImage
        case audio
        case video
        case size(width: Int, height: Int)
        case sizeAll(_ value: Int)
    }
    
    static func random(_ random: URLRandom) -> URL {
        switch random {
        case .userImage:
            return URL(string: "https://picsum.photos/200")!
        case .audio:
            return URL(string: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3")!
        case .video:
            return URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
        case let .size(width, height):
            return URL(string: "https://picsum.photos/\(width)/\(height)")!
        case let .sizeAll(value):
            return URL(string: "https://picsum.photos/\(value)")!
        }
    }
}
