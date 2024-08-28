import UIKit

class HeaderComponent: UIView {
    
    let logoLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Ola, mundo"
        view.font = UIFont(name: "Futura", size: 20)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let menuImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "line.3.horizontal")
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
        self.addSubview(logoLabel)
        self.addSubview(menuImage)
        
        logoLabel.textColor = UIColor(named: "")
        
        NSLayoutConstraint.activate([
            logoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            logoLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            
            menuImage.centerYAnchor.constraint(equalTo: logoLabel.centerYAnchor),
            menuImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            menuImage.heightAnchor.constraint(equalToConstant: 40),
            menuImage.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func configureComponentData(image: UIImage, text: String) {
        logoLabel.text = text
        menuImage.image = image
    }
    
}
