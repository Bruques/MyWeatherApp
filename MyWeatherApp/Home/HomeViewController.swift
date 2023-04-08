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
        homeView.searchButton.addTarget(self, action: #selector(tapSearchButton), for: .touchUpInside)
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

    @objc private func tapSearchButton() {
        guard let cityName = homeView.searchBar.text else { return }
        viewModel.getWeatherData(cityName: cityName)
    }
}

