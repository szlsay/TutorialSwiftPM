import UIKit

open class STView: UIView{
    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    public required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
