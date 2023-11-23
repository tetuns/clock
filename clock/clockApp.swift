//
//  clockApp.swift
//  clock
//
//  Created by Stefano De Rosa on 15/11/23.
//

import SwiftUI

@main
struct clockApp: App {
    var body: some Scene {
        WindowGroup{
            TabView {
                ContentView()
                    .tabItem {
                        Label ("World Clock", systemImage: "globe")
                    }
                AlarmsView()
                    .tabItem {
                        Label ("Alarms", systemImage: "alarm.fill")
                    }
                StopWatchView()
                    .tabItem {
                        Label ("Stopwatch", systemImage: "stopwatch.fill")
                    }
                TimersView()
                    .tabItem {
                        Label ("Timers", systemImage: "timer")
                    }
            }
            .preferredColorScheme(.dark)
        }
    }
}

    

