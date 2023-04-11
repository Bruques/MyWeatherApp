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
            print(weather.name)
            print(weather.main.temp)
        }).disposed(by: dispose)
    }
    
    func getConditionName(weatherId: Int) -> String {
        switch weatherId {
        case 200...232:
            return "cloud.bold"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
}
