import UIKit

final class InsideView: UIView {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var label: UILabel!

    private let viewModel: InsideViewModel

    init(viewModel: InsideViewModel = InsideViewModel()) {
        self.viewModel = viewModel
        super.init(frame: CGRect.zero)
        loadFromNib()
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
