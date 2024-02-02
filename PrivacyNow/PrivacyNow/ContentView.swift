//
//  ContentView.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 02/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress: Double = 0.84
    
    var body: some View {
        NavigationStack{
            VStack(){
                HStack{
                    VStack{
                        HStack{
                            Image(systemName: "calendar")
                            Text(" \(getFormattedDate()) \(getFormattedTime())")
                        }
                        ProgressLinearStyleView()
                        
                        }
                    // Right: ZStack for fingerprint, then image
                        
                    }
                    
                }
            }
            .navigationBarTitle("Privacy Assessment")
            
            .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
    func getFormattedDate() -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            return dateFormatter.string(from: Date())
        }
    func getFormattedTime() -> String {
            let timeFormatter = DateFormatter()
            timeFormatter.timeStyle = .medium
            return timeFormatter.string(from: Date())
        }


#Preview {
    ContentView()
}
