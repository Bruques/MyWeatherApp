//
//  ViewController.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 04/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var homeView: HomeView = {
        let homeView = HomeView()
        return homeView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        self.view = homeView
    }


}

