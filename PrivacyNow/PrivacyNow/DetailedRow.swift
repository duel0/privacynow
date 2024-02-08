//
//  DetailedRow.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import SwiftUI

struct DetailedRow: View {
    let title: String
    var detail: String? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            if detail?.isEmpty == false {
                //Spacer()
                Text(detail ?? "").foregroundColor(Color(.secondaryLabel))
                    
            }
        }
        
    }
}

#Preview {
    DetailedRow(title: "Ciao", detail: "A te")
}
