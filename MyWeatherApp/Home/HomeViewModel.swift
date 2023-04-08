//
//  HomeViewModel.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 07/04/23.
//

import Foundation

protocol HomeViewModelProtocol {
    func getWeatherData(cityName: String)
}

class HomeViewModel: HomeViewModelProtocol {
    let service = NetworkManager()
    
    init() {
        
    }
    
    func getWeatherData(cityName: String) {
        service.fetchData(cityName: cityName)
    }
    
}
