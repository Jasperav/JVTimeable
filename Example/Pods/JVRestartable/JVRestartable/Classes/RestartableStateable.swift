public protocol RestartableStateable: Restartable {
    var restartableState: RestartableState { get set }
}

public extension RestartableStateable {
    public var isActive: Bool {
        get {
            return restartableState == .active
        }
    }
    
    public var isPaused: Bool {
        get {
            return restartableState == .paused
        }
    }
}
