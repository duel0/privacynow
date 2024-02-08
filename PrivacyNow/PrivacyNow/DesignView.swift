//
//  DesignView.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 07/02/24.
//

import SwiftUI

struct DesignView: View {
    
    @State private var progress: Double = 0.84
    @State private var searchText = ""
    
    @StateObject var viewModel = MainViewModel()
    
    var name: String
    var surname: String
    var other: String
    
    var myData = sharedData
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0){
            
                VStack{
                    
                    HStack{
                        Image(systemName: "calendar")
                            .foregroundColor(Color(red: 0.08, green: 0.5, blue: 0.76).opacity(0.8))
                            
                        Text("\(getFormattedDate()) \n\(getFormattedTime())")
                            .font(.headline)
                            .foregroundColor(Color(red: 0.08, green: 0.5, blue: 0.76).opacity(0.8))
                            .padding(.trailing,50)
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                            .shadow(radius: 30)
                            .padding(.trailing,5)
                            .foregroundColor(Color(red: 0.08, green: 0.5, blue: 0.76).opacity(0.8))
                        
                        
                    }
                    
                    //ProgressLinearStyleView()
                        .frame(width: 400.0, height: 120.0)
                    
                    
                }
            
            
            List {
                ForEach(myData.data.sorted(by: <), id: \.key) { key, value in
                    
                    NavigationLink {
                        HideSomething(word: key)
                    } label: {
                        DetailedRow(title: value, detail: key)
                            
                    }
                    
                }
                
                
            }
            
            
            
            //.padding(.leading, 16)
            //.padding(.trailing, 0)
            //.padding(.vertical, 0)
            //.frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60, alignment: .leading)
            
            
            .foregroundColor(.blue)
            
            
            
        }
        
        .navigationTitle("\(myData.name) \(myData.surname)")
        
        
    



.searchable(text: $searchText)
    }
}

#Preview {
    DesignView(name: "Francesco",surname: "Balassone", other: "Unina")
}
