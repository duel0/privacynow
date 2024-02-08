//
//  LoadingView.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import SwiftUI

struct LoadingView: View {
    @Binding var isShowingLoadingView: Bool
    
    var body: some View {
        // Visualizza la vista di caricamento
        ProgressView()
            .onAppear {
                // Simula l'esecuzione di elaborazioni
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    // Quando le elaborazioni sono completate, torna alla vista PrivacyAssessmentView
                    isShowingLoadingView = false
                }
            }
            .navigationTitle("Loading")
    }
}

//#Preview {
//    LoadingView()
//}
