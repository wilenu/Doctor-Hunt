import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .systemBackground
        tabBar.tintColor = UIColor(named: "CustomGreen")
        self.navigationItem.setHidesBackButton(true, animated: true)
        setupTabBar()
    }
    
    private func setupTabBar() {
        let homeVC = UINavigationController(rootViewController: HomeViewController(dataSource: HomeDataSource(), delegate: HomeDelegate()))
        let favoritesVC = UINavigationController(rootViewController: FavoritesViewController())
        let categoriesVC = UINavigationController(rootViewController: CategoriesViewController())
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        
        homeVC.tabBarItem.image = UIImage(named: "home")
        homeVC.tabBarItem.title = "Home"
        favoritesVC.tabBarItem.image = UIImage(named: "favorites")
        favoritesVC.tabBarItem.title  = "Favoritos"
        categoriesVC.tabBarItem.image = UIImage(named: "categories")
        categoriesVC.tabBarItem.title = "Categorías"
        profileVC.tabBarItem.image = UIImage(named: "sms")
        profileVC.tabBarItem.title = "Perfil"
        
        setViewControllers([homeVC,favoritesVC,categoriesVC,profileVC], animated: true)

    }
}
