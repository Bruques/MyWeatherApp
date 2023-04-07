//
//  HomeView.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 07/04/23.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    private lazy var backgroundImageView = self.makeBackgroundImageView()
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeView {
    private func addSubviews() {
        addSubview(backgroundImageView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

extension HomeView {
    private func makeBackgroundImageView() -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: "light_background")!)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }
}

