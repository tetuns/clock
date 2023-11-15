//
//  CityTimeZone.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import Foundation

struct CityTimeZone: Identifiable {
    
    var city: String = "City Name"
    var country: String = "Country Name"
    var timezone: String = "Time Zone"
    var id = UUID()

    init(city: String, country: String, timezone: String, id: UUID = UUID()) {
        self.city = city
        self.country = country
        self.timezone = timezone

    }
}

