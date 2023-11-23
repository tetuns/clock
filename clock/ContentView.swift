//
//  ContentView.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import SwiftUI
import Foundation


struct ContentView: View {
    
    @ObservedObject var viewModelCity = cityModel
    
    @State var isModalShowed: Bool = false
    
    var savedClock: [CityTimeZone] {
        return viewModelCity.cities.filter { city in
            city.saved
        }
    }
    
    func updateCurrentTime(fusOrario: Int, idCity: UUID) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        let time = Calendar.current.date(byAdding: .hour, value: fusOrario, to: Date())
        for index in 0...cityModel.cities.count-1{
            if cityModel.cities[index].id == idCity{
                cityModel.cities[index].showTime = dateFormatter.string(from: time!)
            }
        }
        
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                
                if savedClock.isEmpty{
                    Text("No World Clocks")
                        .foregroundColor(.gray)
                        .font(.title)
                    
                } else{
                    
                    
                    List{
                        ForEach(savedClock) { city in
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Today, " + (city.timezone >= 0 ? "+" : "")  +  "\(city.timezone)HRS")
                                        .foregroundColor(.gray)
                                    Text(city.city)
                                        .font(.title)
                                        .fontWeight(.regular)
                                }
                                Spacer()
                                Text(city.showTime)
                                    .font(.system(size: 60))
                                    .fontWeight(.light)
                            }
                            .onAppear {
                                
                                updateCurrentTime(fusOrario: city.timezone, idCity: city.id)
                                
                                let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                                    updateCurrentTime(fusOrario: city.timezone, idCity: city.id)
                                }
                                
                                RunLoop.current.add(timer, forMode: .common)
                            }
                            .listRowSeparator(/*@START_MENU_TOKEN@*/.visible/*@END_MENU_TOKEN@*/)
                            .listRowBackground(Color.black)
                        }
                        .onDelete{ indexSet in
                            let index = indexSet.first
                            let city = savedClock[index!]
                            if let cityIndex = viewModelCity.cities.firstIndex(where: { $0.id == city.id }) {
                                viewModelCity.cities[cityIndex].saved = false
                            }
                        }     
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                    
                }
                
                ToolbarItem(placement:
                        .topBarTrailing) {
                            Button(action: {
                                isModalShowed .toggle()
                            }){
                                Image(systemName: "plus")
                                
                            }
                            .sheet(isPresented: $isModalShowed) {
                                clockModal(modalOn: $isModalShowed)
                                
                            }
                        }
            }
            .navigationTitle("World Clock")
        }
    }
}


#Preview {
    ContentView()
}

