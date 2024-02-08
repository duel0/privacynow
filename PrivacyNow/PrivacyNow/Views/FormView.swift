//
//  FormView.swift
//  MyFirstProject
//
//  Created by Francesco Balassone on 02/02/24.
//

// MARK: FRAMEWORKS

import SwiftUI

struct FormView: View {
    
    // MARK: PROPERTIES
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var other: String = ""
    @State private var isShowingLoadingView = false
    var myData = sharedData
    
    // Per farlo chiudere automaticamente
    @Environment(\.dismiss) var dismiss
    
    // MARK: BODY
    var body: some View {
        
        //NavigationView(){
            Form{
                Section("Name"){
                    TextField("Insert Your Name", text: $name)
                }
                Section("Surname"){
                    TextField("Insert Your Surname", text: $surname)
                }
                Section("Info"){
                    TextField("Insert Other Info", text: $other)
                }
                
            } // end form
            .navigationTitle("Initial Setup")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink{
                        ContainerView(name: name, surname:surname, other:other)
                    } label: {
                        Text("Next")
                    }
                }
            }
        //} // end navigationstack
            
    } // end body
}



// MARK: PREVIEW
#Preview {
    FormView()
}
