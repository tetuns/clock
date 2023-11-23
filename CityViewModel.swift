//
//  CityViewModel.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import Foundation

class CityViewModel: ObservableObject {
    @Published var cities: [CityTimeZone] = [
        CityTimeZone(city: "Naples", country: "Italy", timezone: 0, saved: true),
        CityTimeZone(city: "Dublin", country: "Ireland", timezone: -1, saved: false),
        CityTimeZone(city: "New York", country: "USA", timezone: -6, saved: false),
        CityTimeZone(city: "Rome", country: "Italy", timezone: 0, saved: false),
        CityTimeZone(city: "Moscow", country: "Russia", timezone: 2, saved: false),
        CityTimeZone(city: "Melbourne", country: "Australia", timezone: +10, saved: false),
        CityTimeZone(city: "San Diego", country: "USA", timezone: -9, saved: false),
        CityTimeZone(city: "Shanghai", country: "China mainland", timezone: +7, saved: false),
        CityTimeZone(city: "Monterrey", country: "Mexico", timezone: -7, saved: false),
        CityTimeZone(city: "Marrakech", country: "Morocco", timezone: 0, saved: false),
        CityTimeZone(city: "Dubai", country: "UAE", timezone: +3, saved: false)
        
    ]
    
}
//observable Macro

var cityModel = CityViewModel()
