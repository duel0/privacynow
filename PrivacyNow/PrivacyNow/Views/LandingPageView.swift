//
//  ContentView.swift
//  PrivacyApp
//
//  Created by Federica Bertini on 04/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View { //variabile body permette di definire lo stile e la view del body
        
        NavigationView {
        //stackview è un contenitore di view
            VStack(alignment: .leading) {
            
            Image("logo")
                    .resizable(capInsets: EdgeInsets(top: 5.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 300, height: 300)  // Imposta le dimensioni dell'immagine secondo le tue preferenze
                
                
                    Text("Begin with privacy. Now.")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding(1.0)
                    
                    Text("Check your Digital Presence.")
                        .fontWeight(.medium)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                    
                    Text("Look through the sources.")
                        .fontWeight(.medium)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                    
                    Text("Learn more about Privacy.")
                        .fontWeight(.medium)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.leading)
                    
                    Text("Feel safer online.")
                        .fontWeight(.medium)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                
        
                
            NavigationLink(destination: WarningPageView()) {
                                Text("Get Started!")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
            }
            .padding([.top, .leading, .bottom], 70.0)
            .padding([.top], -60.0)
                       }
            .padding(.leading)
            

                   }
               }
           }

#Preview {
    ContentView()
}
