//
//  HomeViewModel.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 07/04/23.
//

import Foundation
import RxSwift

protocol HomeViewModelProtocol {
    func getWeatherData(cityName: String)
}

class HomeViewModel: HomeViewModelProtocol {
    let service = NetworkManager()
    let dispose = DisposeBag()
    init() {
        
    }
    
    func getWeatherData(cityName: String) {
        service.fetchDataWithRxSwift(cityName: cityName).subscribe(onNext: { (weather) in
            print(weather.main.temp)
        }).disposed(by: dispose)
    }
    
}
