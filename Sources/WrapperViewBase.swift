import UIKit

public protocol WrapperViewBase : AnyObject {
    associatedtype ViewType : UIView, LoadableFromXib
    
    var view: ViewType! { get set }
}

extension WrapperViewBase where Self : UIView {
    public func loadView() {
        guard let view = ViewType.loadFromXib() else {
            self.backgroundColor = UIColor.red
            return
        }
        self.view = view
        self.addSubview(view)
        view.frame = view.superview!.bounds
    }
}
