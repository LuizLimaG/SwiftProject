import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    func setup() {
        let firstViewController = CustomStatusBarViewController(rootViewController: ViewController())
        let secondViewController = CustomStatusBarViewController(rootViewController: SecondViewController())
        
        self.setViewControllers([
            firstViewController,
            secondViewController
        ], animated: false)
        
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Home"
        items[0].image = UIImage(systemName: "house.fill")
        
        items[1].title = "Weather"
        items[1].image = UIImage(systemName: "cloud.fill")
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = UIColor(named: "ComponentsBackgroundColor")
        
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor(named: "TabBarColor")
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "TabBarColor") ?? ""]
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor(named: "TabBarColor")
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "TabBarColor") ?? ""]
        
        tabBar.standardAppearance = tabBarAppearance
        if #available(iOS 15.0, *) {
            self.tabBar.scrollEdgeAppearance = tabBarAppearance
        }
    }
}
