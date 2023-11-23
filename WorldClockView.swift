//
//  WorldClockView.swift
//  clock
//
//  Created by Stefano De Rosa on 16/11/23.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label ("World Clock", systemImage: "globe")
                }
            AlarmsView()
                        .tabItem {
                            Label ("Alarms", systemImage: "alarm.fill")
                        }
                }
        }
    }

#Preview {
    WorldClockView()
}
