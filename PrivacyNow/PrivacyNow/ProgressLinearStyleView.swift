//
//  ProgressLinearStyleView.swift
//  FoundationHIG
//
//  Created by Francesco Balassone on 02/02/24.
//

import SwiftUI

struct ProgressLinearStyleView: View {
    
    //MARK: PROPERTIES

    @State private var progress: Double = 0.47
    let timerInterval = 0.5 // Adjust this value to control the animation speed
    
 
    //MARK: BODY
    var body: some View {
        Form{
            Section{
                VStack() {
                    ProgressView(value: progress, total: 1.0) {
                        Text("\(Int(progress*100))% score")
                            .font(.footnote)
                    }
                    .progressViewStyle(.linear)
                    .padding(.vertical)
                }
                
            } header: {
                Text("Score")
            }
        }.scrollDisabled(true)
        
    }
    

    //MARK: FUNCTION
    private func startAnimating() {
        let timer = Timer.scheduledTimer(withTimeInterval: timerInterval, repeats: true) { _ in
            if (progress + 0.1) < 1.0 {
                progress += 0.01
            } else {
                progress = 0.0
            }
        }
        timer.fire()
    }
}

#Preview {
    ProgressLinearStyleView()
}
