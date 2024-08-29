import UIKit

class ViewController: UIViewController {
    
    var statusBarStyle: UIStatusBarStyle = .default

    private lazy var headerComponent: HeaderComponent = {
        let view = HeaderComponent(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "ComponentsBackgroundColor")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewConfiguration()
        subViewsConstraintsConfiguration()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }
    
    func viewConfiguration() {
        view.backgroundColor = UIColor(named: "BackgroundColor")
        view.addSubview(headerComponent)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    func subViewsConstraintsConfiguration() {
        
        let screen = UIScreen.main.bounds
        
        NSLayoutConstraint.activate([
            headerComponent.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            headerComponent.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            headerComponent.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            headerComponent.heightAnchor.constraint(equalToConstant: screen.height / 8 )
        ])
    }


}

