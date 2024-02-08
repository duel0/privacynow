//
//  ContainerView.swift
//  PrivacyApp
//
//  Created by Federica Bertini on 05/02/24.
//

import SwiftUI

struct ContainerView: View {
    
    var name: String
    var surname: String
    var other: String
    
    var body: some View {
        TabView {
            PrivacyAssesmentView(name: name, surname: surname, other: other)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            InsightsListView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Insight")
                }
        }
        .navigationTitle("\(name) \(surname)")
        
    }
        
}

#Preview {
    ContainerView(name:"Maria", surname:"De Filippi", other:"Conduttrice")
}
