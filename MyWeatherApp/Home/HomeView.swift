//
//  HomeView.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 07/04/23.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    enum Constants {
        static var searchBarPlaceholder = "Search"
    }
    
    private lazy var backgroundImageView = self.makeBackgroundImageView()
    
    private lazy var headerStackView = self.makeHeaderStackView()
    private lazy var getLocationButton = self.makeGetLocationButton()
    lazy var searchBar = self.makeSearchBar()
    lazy var searchButton = self.makeSearchButton()
    lazy var weatherInfoStackView = self.makeWeatherInfoStackView()
    lazy var weatherIcon = self.makeWeatherIcon()
    lazy var weatherTemp = self.makeWeatherTemp()
    lazy var weatherCity = self.makeWeatherCity()
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Add subviews and setup constraints

extension HomeView {
    private func addSubviews() {
        addSubview(backgroundImageView)
        
        addSubview(headerStackView)
        headerStackView.addArrangedSubview(getLocationButton)
        headerStackView.addArrangedSubview(searchBar)
        headerStackView.addArrangedSubview(searchButton)
        
        addSubview(weatherInfoStackView)
        weatherInfoStackView.addArrangedSubview(weatherIcon)
        weatherInfoStackView.addArrangedSubview(weatherTemp)
        weatherInfoStackView.addArrangedSubview(weatherCity)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            headerStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            headerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            weatherInfoStackView.topAnchor.constraint(equalTo: headerStackView.bottomAnchor, constant: 8),
            weatherInfoStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            weatherInfoStackView.heightAnchor.constraint(equalToConstant: 200),
            weatherInfoStackView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}

// MARK: - Make function

extension HomeView {
    private func makeBackgroundImageView() -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: "light_background")!)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }
    
    private func makeHeaderStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        return stackView
    }
    
    private func makeGetLocationButton() -> UIButton {
        let button = UIButton()
        let image = UIImage(named: "location_icon")
         button.setImage(image, for: .normal)
        return button
    }
    
    private func makeSearchBar() -> UITextField {
        let textField = UITextField()
        textField.placeholder = Constants.searchBarPlaceholder
        textField.textAlignment = .right
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .systemFill
        return textField
    }
    
    private func makeSearchButton() -> UIButton {
        let button = UIButton()
        let image = UIImage(named: "search_icon")
        button.setImage(image, for: .normal)
        return button
    }
    
    private func makeWeatherInfoStackView() -> UIStackView {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }
    
    private func makeWeatherIcon() -> UIImageView {
        let image = UIImage(systemName: "cloud")
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    private func makeWeatherTemp() -> UILabel {
        let label = UILabel()
        label.text = "C"
        label.font = .systemFont(ofSize: 60)
        label.textAlignment = .center
        return label
    }
    
    private func makeWeatherCity() -> UILabel {
        let label = UILabel()
        label.text = "City name"
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }
}
