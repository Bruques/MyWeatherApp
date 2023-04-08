//
//  ViewController.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 04/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let viewModel: HomeViewModelProtocol
    
    private lazy var homeView: HomeView = {
        let homeView = HomeView()
        return homeView
    }()
    
    init(viewModel: HomeViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        self.view = homeView
    }


}

