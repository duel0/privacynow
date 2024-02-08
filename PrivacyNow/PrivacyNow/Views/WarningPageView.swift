//
//  WarningPageView.swift
//  PrivacyApp
//
//  Created by Federica Bertini on 04/02/24.
//

import SwiftUI

struct WarningPageView: View {
    var body: some View {
        
            
            VStack{
                Text("Know Your Rights")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding(.bottom, 50.0)
                
                Image(systemName: "x.circle")
                    .foregroundColor(Color.blue)
                Text("You WON’T be prompted to write your PASSWORDS.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                    .padding(.bottom)

                
                Image(systemName: "globe")
                    .foregroundColor(Color.blue)
                Text("We WON’T share ANY of your sensitive data.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                    .padding(.bottom)
                
                Image(systemName: "checkmark.shield")
                    .foregroundColor(Color.blue)
                Text("Our software retrieves PUBLICLY AVAILABLE information ONLY.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                    .padding(.bottom)

                
                Image(systemName: "lock.square")
                    .foregroundColor(Color.blue)
                Text("Maximize your PRIVACY SCORE on the app.")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)

            
            }
            .padding(.horizontal, 40.0)
            
            VStack{
                NavigationLink{ FormView()} label: {
                    Text("Continue")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
            }
                .padding(.top, 40.0)
            }
        
        
        
        
        

        
        
        
        
        
    }
}

#Preview {
    WarningPageView()
}
