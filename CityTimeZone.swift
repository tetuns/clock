//
//  CityTimeZone.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import Foundation

struct CityTimeZone: Identifiable {
    
    var city: String
    var country: String
    var timezone: Int
    var id = UUID()
    var saved: Bool
    var showTime = ""
    
}

