/// To use stand alone timers (a.k.a. timers that are class-independent)
/// Conform appDelegate to be a restartableManageable instance and set standalone restartables there.

public protocol Restartable: AnyObject {
    func pause()
    func resume()
}

public extension Array where Element: Restartable {
    public func pauseAll() {
        for restartable in self {
            restartable.pause()
        }
    }
    
    public func resumeAll() {
        for restartable in self {
            restartable.resume()
        }
    }
}


public extension Set where Element: Restartable {
    public func pauseAll() {
        for restartable in self {
            restartable.pause()
        }
    }
    
    public func resumeAll() {
        for restartable in self {
            restartable.resume()
        }
    }
}
