//
//  clockModal.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import SwiftUI

struct clockModal: View {
    
    @ObservedObject var viewModelCity = cityModel
    var savedClock: [CityTimeZone] {
        viewModelCity.cities.filter { city in
            !city.saved
        }
    }
    
    @Binding var modalOn: Bool
    
    @Environment(\.dismiss) var dismiss
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(savedClock) { city in
                    Button("\(city.city), \(city.country)") {
                        addSaved(city: city)
                        modalOn = false
                        
                    }
                    .foregroundStyle(.white)
                }
                
            }
            .listStyle(.plain)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            .toolbarTitleDisplayMode(.inline)
            .navigationTitle("Choose a City")
        }
    }
    
    func addSaved(city: CityTimeZone) {
        
        for index in 0...(cityModel.cities.count-1) {
            if cityModel.cities[index].id == city.id{
                cityModel.cities[index].saved = true
            }
        }
    }
}

/*#Preview {
    clockModal(modalOn: true)
}*/
