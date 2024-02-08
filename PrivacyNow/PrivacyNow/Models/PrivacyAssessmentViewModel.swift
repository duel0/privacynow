import SwiftUI

class PrivacyAssessmentViewModel: ObservableObject {
    @Published var suggestion: String?
    @Published var isLoading: Bool = false
    
    func giveSuggestion(content: String) {
        // Imposta isLoading a true per indicare che la richiesta è in corso
        self.isLoading = true
        
        // Effettua la richiesta API tramite NetworkManagerC
        NetworkManagerC.shared.performRequest(testo: content) { [weak self] responseContent in
            DispatchQueue.main.async {
                // Aggiorna isLoading a false quando la richiesta è completata
                self?.isLoading = false
                
                // Aggiorna suggestion con il contenuto della risposta
                self?.suggestion = responseContent
            }
        }
    }
}
