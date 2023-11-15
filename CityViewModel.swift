//
//  CityViewModel.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import Foundation

class CityViewModel {
    var cities: [CityTimeZone] = [
       CityTimeZone(city: "Napoli", country: "Italia", timezone: "12.00"),
       CityTimeZone(city: "Belfast", country: "Irlanda", timezone: "11.00"),
       CityTimeZone(city: "New York", country: "America", timezone: "18.00")
    ]
}
