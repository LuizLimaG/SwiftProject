import UIKit

class SecondViewController: UIViewController {
    
    var statusBarStyle: UIStatusBarStyle = .default
    
    private lazy var cardComponent: WeatherCardViewModel = {
        let view = WeatherCardViewModel(frame: .zero)
        view.backgroundColor = UIColor(named: "ComponentsBackgroundColor")
        view.layer.cornerRadius = 17
        view.translatesAutoresizingMaskIntoConstraints = false
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
        
        view.addSubview(cardComponent)
    }
    
    func subViewsConstraintsConfiguration() {
        
        let screen = UIScreen.main.bounds
        
        NSLayoutConstraint.activate([
            cardComponent.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            cardComponent.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            cardComponent.heightAnchor.constraint(equalToConstant: screen.height / 3 ),
            cardComponent.widthAnchor.constraint(equalToConstant: screen.width / 1.2)
        ])
    }


}
