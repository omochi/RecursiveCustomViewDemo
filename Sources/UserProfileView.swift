import UIKit

@IBDesignable
public class UserProfileViewWrapperView : UIView, WrapperViewBase {
    public var view: UserProfileView!

    public override func awakeFromNib() {
        super.awakeFromNib()
        loadView()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        loadView()
    }
}

public class UserProfileView : UIView, LoadableFromXib {
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var likeViewWrapper: LikeViewWrapperView!
    private var likeView: LikeView {
        return likeViewWrapper.view
    }
}
