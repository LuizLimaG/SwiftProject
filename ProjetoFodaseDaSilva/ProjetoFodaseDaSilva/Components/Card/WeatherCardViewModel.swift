import UIKit

class WeatherCardViewModel: UIView {
    
    private lazy var cityTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.textColor = UIColor(named: "LabelColor")
        view.textAlignment = .center
        view.backgroundColor = UIColor(named: "ComponentsBackgroundColor")
        view.placeholder = "Digite a cidade:"
        view.layer.cornerRadius = 17
        view.autocapitalizationType = .words
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var weatherImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(systemName: "cloud.fill")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var cityLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Nome da cidade"
        view.font = UIFont(name: "Futura", size: 19)
        view.textColor = UIColor(named: "LabelColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var degreesLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "30˚C"
        view.font = UIFont(name: "Futura", size: 40)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        buildLayout()
    }
    
    func buildLayout() {
        self.addSubview(cityLabel)
        self.addSubview(weatherImage)
        self.addSubview(degreesLabel)
        self.addSubview(cityTextField)
        
        let screen = UIScreen.main.bounds
        
        NSLayoutConstraint.activate([
            cityTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: -60),
            cityTextField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            cityTextField.widthAnchor.constraint(equalToConstant: screen.width / 1.2),
            cityTextField.heightAnchor.constraint(equalToConstant: 55),
            
            weatherImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            weatherImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            weatherImage.heightAnchor.constraint(equalToConstant: 100),
            weatherImage.widthAnchor.constraint(equalToConstant: 130),
            
            cityLabel.topAnchor.constraint(equalTo: weatherImage.bottomAnchor, constant: 10),
            cityLabel.centerXAnchor.constraint(equalTo: weatherImage.centerXAnchor),
            
            degreesLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 15),
            degreesLabel.centerXAnchor.constraint(equalTo: weatherImage.centerXAnchor)
        ])
    }
    
}
