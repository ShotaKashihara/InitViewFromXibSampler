# InitViewFromXibSampler
Sample UIView init(viewModel:) from xib.

#### How to use UIViewController.init(viewModel:) from Xib.

```swift
final class MainViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var underView: UIView!

    private let viewModel: MainViewModel

    init(viewModel: MainViewModel = MainViewModel()) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    ...
}
```

#### How to use UIView.init(viewModel:) from Xib.

```swift
final class InsideView: UIView {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var label: UILabel!

    private let viewModel: InsideViewModel

    init(viewModel: InsideViewModel = InsideViewModel()) {
        self.viewModel = viewModel
        super.init(frame: CGRect.zero)
        loadFromNib()
    }
    ...
}

extension UIView {
    func loadFromNib() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: Bundle(for: type(of: self)))
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        layoutEdgeConstraint(to: view)
    }
}
```
