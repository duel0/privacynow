//
//  DetailView.swift
//  MyFirstProject
//
//  Created by Nike Di Giacomo on 01/02/24.
//

import SwiftUI

struct DetailViewRegulation: View{
    @State private var searchText = ""
    init() {
         // Large Navigation Title
         UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
         // Inline Navigation Title
         UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
       }
    
    var body: some View{
        
        NavigationView {
            ScrollView {
                ZStack {
                    Color.blue // Sfondo generale
                        .opacity(0.1)
                        .ignoresSafeArea()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.2)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Here are some key aspects of privacy regulations in Italy under the GDPR:")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Data Protection Authority(DPA): In Italy, the Data Protection Authority is responsible for enforcing and overseeing compliance with data protection laws. The authority is known as the Garante per la protezione dei dati personali (Italian Data Protection Authority).")
                            .font(Font.custom("SF Pro", size: 18).weight(.bold))
                            .padding(.horizontal, 10.0)
                            .lineSpacing(10)
                            .foregroundColor(.black)
                            .padding(10)
                        
                        Text("Data Subject Rights: GDPR grants individuals certain rights regarding their personal data. These rights include the right to access their data, the right to rectify inaccuracies, the right to erasure (right to be forgotten), and the right to data portability. Individuals also have the right to object to the processing of their personal data.").font(Font.custom("SF Pro", size: 18).weight(.bold))
                            .padding(.horizontal, 10.0)
                            .lineSpacing(10)
                            .foregroundColor(.black)
                            .padding(10)
                        
                        
                        Text("Lawful Basis for Processing: Companies and organizations in Italy must have a lawful basis for processing personal data. This can include obtaining the data subject's consent, fulfilling a contractual obligation, complying with legal obligations, protecting vital interests, performing a task carried out in the public interest or in the exercise of official authority, or legitimate interests pursued by the data controller or a third party.").font(Font.custom("SF Pro", size: 18).weight(.bold))
                            .padding(.horizontal, 10.0)
                            .lineSpacing(10)
                            .foregroundColor(.black)
                            .padding(10)
                    }
                    .padding()
                    .foregroundColor(Color.primary)
                }
            }
            .navigationBarTitle("Regulations in Italy", displayMode: .large)
        }
    }
}


#Preview {
    DetailViewRegulation()
}

