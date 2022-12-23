//
//  WalletVC.swift
//  AppBackFront
//
//  Created by Caio Fabrini on 22/12/22.
//

import UIKit

class WalletVC: UIViewController {
    
    var screen: WalletScreen?
    var viewModel: WalletViewModel = WalletViewModel()
    override func loadView() {
        screen = WalletScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetch(.request)
        // Do any additional setup after loading the view.
    }
    
}
