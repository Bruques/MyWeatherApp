//
//  WeatherModel.swift
//  MyWeatherApp
//
//  Created by Bruno Marques on 08/04/23.
//

import Foundation

struct WeatherModel: Decodable {
    let name: String
    let main: Main
}

struct Main: Decodable {
    let temp: Double
}
