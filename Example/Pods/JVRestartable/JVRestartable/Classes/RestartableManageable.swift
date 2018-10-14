public protocol RestartableManageable: AnyObject {
    var restartables: [Restartable] { get set }
}

public extension RestartableManageable {
    public func addRestartable(_ restartable: Restartable) {
        guard !restartables.contains(where: { $0 === restartable }) else { return }
        
        restartables.append(restartable)
    }
    
    public func removeRestartable(_ restartable: Restartable) {
        restartables = restartables.filter { $0 !== restartable }
    }
    
    public func removeAllRestartables() {
        restartables.removeAll()
    }
    
    public func pauseRestartables() {
        for restartable in restartables {
            restartable.pause()
        }
    }
    
    public func resumeRestartables() {
        for restartable in restartables {
            restartable.resume()
        }
    }
    
}
