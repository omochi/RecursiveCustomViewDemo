import UIKit

public protocol LoadableFromXib : AnyObject {
    static func loadFromXib() -> Self?
}

extension LoadableFromXib {
    public static func loadFromXib() -> Self? {
        let bundle = Bundle(for: self)
        let name = "\(self)"
        let objs: [Any]? = bundle.loadNibNamed(name,
                                               owner: nil,
                                               options: nil)
        let obj: Any? = objs?.first
        let view: Self? = obj as? Self
        return view
    }
}
