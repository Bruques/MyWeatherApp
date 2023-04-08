//
//  NetworkManager.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 08/04/23.
//

import Foundation

protocol NetworkManagerProtocol {
    
}

class NetworkManager: NetworkManagerProtocol {
    var key = "942fac2e9af3976387f8e898bca4f081"
    
    init() {
        
    }
    
    func fetchData(cityName: String) {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&units=metric&appid=\(key)") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: \(error)")
                return
            }
            
            guard let data = data else { return }
            do {
                let decodedData = try JSONDecoder().decode(WeatherModel.self, from: data)
                print(decodedData.main.temp)
            } catch {
                print("Encoding error: \(error)")
            }
        }
        dataTask.resume()
    }
}

//"https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&units=metric&appid=\(key)"
