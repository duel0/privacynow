//
//  PrivacyAssesmentView.swift
//  PrivacyApp
//
//  Created by Federica Bertini on 05/02/24.
//

/*
 struct HideSomething: View {
     
     var word: String
     @StateObject var viewModel = PrivacyAssessmentViewModel()
     
     var body: some View {
         NavigationView {
             ScrollView {
                 if let suggestion = viewModel.suggestion {
                     Text("\(suggestion)")
                         .font(.body)
                         .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                 } else if viewModel.isLoading {
                     ProgressView()
                 } else {
                     Text("Hello")
                         .onAppear {
                             viewModel.giveSuggestion(content: word)
                         }
                 }
             }
             .navigationTitle("Hide \(word)")
         }
     }
 */

import SwiftUI

struct PrivacyAssesmentView: View {
    
    @State private var progress: Double = 0.84
    @State private var searchText = ""
    
    @StateObject var viewModel = MainViewModel()
    
    var name: String
    var surname: String
    var other: String
    
    var myData = sharedData
    var body: some View {
        
        
        if let suggestion = viewModel.suggestion {
            /*
                VStack(alignment: .leading, spacing: 0.0){
                    HStack{
                        VStack{
                            HStack{
                                Image(systemName: "calendar")
                                Text(" \(getFormattedDate()) \(getFormattedTime())")
                                
                                Image("spiderman")
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: 100, height: 100)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .scaledToFit()
                                    .shadow(radius: 30)
                                
                            }
                            
                            ProgressLinearStyleView()
                                .frame(width: 400.0, height: 120.0)
                            
                            
                        }
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
                    .listStyle(GroupedListStyle())
                    
                }
                
                .navigationTitle("\(myData.name) \(myData.surname)")
                
                
            
     
        
        
        .searchable(text: $searchText)
        */
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
        } else if viewModel.isLoading {
            ProgressView()
        } else {
            Text("Hello")
                .onAppear {
                    viewModel.askAI(name: name, surname: surname, other: other)
        }
            
                
        }
            
            
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
    PrivacyAssesmentView(name: "Maria", surname: "De Filippi", other: "Conduttrice")
}
