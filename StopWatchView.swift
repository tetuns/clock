//
//  StopWatchView.swift
//  clock
//
//  Created by Stefano De Rosa on 16/11/23.
//

import SwiftUI

struct StopWatchView: View {
    
    @ObservedObject var stopWatch = StopWatch()
    @State private var currentTime: Date? = nil
    @State private var isClockRunning = false
    private var timer: Timer?
    @State var viewControl = 0
    
    var body: some View {
        
        VStack {
            
            Text(self.stopWatch.stopWatchTime)
                .font(.system(size: 80))
                .frame(width: UIScreen.main.bounds.size.width,
                       height: 300,
                       alignment: .center)
                .fontWeight(.thin)
            HStack {
                ZStack {
                    Color.gray.opacity(0.3)
                    Button("Lap", action: {})
                        .font(.title)
                }
                .foregroundStyle(.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 100)
                    
                Spacer()
                
                HStack{
                    Circle()
                        .frame(width: 10)
                    Circle()
                        .frame(width: 10)
                        .foregroundStyle(.white.opacity(0.5))
                }
                Spacer()
    
                ZStack {
                    Color.green.opacity(0.22)
                        
                    Button("Start", action: {
                                   /*if isClockRunning {
                                       stopClock()
                                   } else {
                                       startClock()
                                   }*/
                               })
                               .font(.title)
                               .foregroundStyle(.green)
                               .frame(width: 100)
                }
                .foregroundStyle(.green)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            }
            Spacer(minLength: 300)
        }
    }
    
    /*private mutating func startClock() {
           isClockRunning = true
           timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
               // Update the currentTime every second
               currentTime = Date()
           }
       }

    private mutating func stopClock() {
           isClockRunning = false
           timer?.invalidate()
           timer = nil
       }*/
}
#Preview {
    StopWatchView()
}
