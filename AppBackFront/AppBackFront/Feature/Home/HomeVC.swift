//
//  HomeVC.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 19/12/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
