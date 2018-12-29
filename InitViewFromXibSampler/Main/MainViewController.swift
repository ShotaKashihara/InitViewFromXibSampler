import UIKit

final class MainViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var underView: UIView!

    private let viewModel: MainViewModel

    init(viewModel: MainViewModel = MainViewModel()) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let insideView = InsideView()
        underView.addSubview(insideView)
        underView.layoutEdgeConstraint(to: insideView)
    }
}

