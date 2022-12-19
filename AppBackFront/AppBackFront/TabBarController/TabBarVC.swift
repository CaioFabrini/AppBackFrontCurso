//
//  TabBarVC.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 19/12/22.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
         setupTabBar()
    }
    
    private func setupTabBar() {
        let home = UINavigationController(rootViewController: HomeVC())
        setViewControllers([home], animated: false)
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor(red: 130/255, green: 26/255, blue: 201/255, alpha: 1.0)
        tabBar.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        
        guard let items = tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "trash")
    }

}
