//
//  GroupedRowTest.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import SwiftUI
import Foundation


struct GroupedRowTest: View {
    var myData = sharedData
    
    var body: some View {
        List {
            ForEach(myData.data.sorted(by: <), id: \.key) { key, value in
                NavigationLink {
                    
                } label: {
                    DetailedRow(title: value, detail: key)
                    //Section(header: Text(key)) {
                       // Text("\(value)")
                    //}
                }
            }
            
        }
        
        .listStyle(GroupedListStyle())
        .navigationTitle("Profile")
    }
}

struct GroupedRowTest_Previews: PreviewProvider {
    static var previews: some View {
        GroupedRowTest()
    }
}

