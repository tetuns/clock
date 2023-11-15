//
//  ContentView.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    var viewModelCity = CityViewModel()
    @State var isModalShowed: Bool = false
    
    var body: some View {
        NavigationStack {
            { List
                ForEach(viewModelCity.cities) {City in
                    NavigationLink {
                        ContentView
                    } }
                
                
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
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
                                clockModal()
                            }
                        }
            
                
            } .navigationTitle("World Clock")
        }
        
    }
}
#Preview {
    ContentView()
}

