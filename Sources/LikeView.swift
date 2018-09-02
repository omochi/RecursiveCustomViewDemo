import UIKit

@IBDesignable
public class LikeViewWrapperView : UIView, WrapperViewBase {
    public var view: LikeView!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        loadView()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        loadView()
    }
}

public class LikeView : UIView, LoadableFromXib {    
    @IBOutlet private var button: UIButton!
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
