//
//  MainViewModel.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var suggestion: String?
    @Published var isLoading: Bool = false
    var myData = sharedData
    
    func askAI(name: String, surname: String, other: String) {
        // Imposta isLoading a true per indicare che la richiesta è in corso
        self.isLoading = true
        
        myData.name=name
        myData.surname=surname
        myData.other=other
        
        // Effettua la richiesta API tramite NetworkManagerC
        
        NetworkManagerA.shared.performRequest(name: myData.name, surname: myData.surname, other: myData.other) { [weak self] responseContent in
            
            DispatchQueue.main.async {
                if let content = responseContent {
                    NetworkManagerB.shared.performRequest(testo: content) { [weak self] responseContent2 in
                        if let content2 = responseContent2 {
                            if let start = content2.range(of: "{"),
                               let end = content2.range(of: "}", options: .backwards) {
                                let substring = content2[start.upperBound..<end.lowerBound]
                                let formattedContent = "{\(substring)}"
                                print(formattedContent)
                                self?.myData.data = extractStringKeyValuePairs(from: formattedContent) 
                                
                                self?.isLoading = false
                                
                                self?.suggestion = responseContent2
                                
                                //completion(formattedContent)
                            } else {
                                print("Unable to isolate content from response")
                                //completion(nil)
                            }
                        } else {
                            print("Unable to isolate content from response")
                            //completion(nil)
                        }
                    }
                } else {
                    print("Unable to isolate content from response")
                    //completion(nil)
                }
            }
            
            
        }
        
        /*NetworkManagerC.shared.performRequest(testo: content) { [weak self] responseContent in
            DispatchQueue.main.async {
                // Aggiorna isLoading a false quando la richiesta è completata
                self?.isLoading = false
                
                // Aggiorna suggestion con il contenuto della risposta
                self?.suggestion = responseContent
            }
        } */
        
    }
}

