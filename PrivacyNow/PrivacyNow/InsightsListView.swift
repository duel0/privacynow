import SwiftUI

struct InsightsListView: View {

    var myData = sharedData

    /*init() {
        // Large Navigation Title
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        // Inline Navigation Title
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
    }*/

    // Funzione per determinare la destinazione in base all'indice
    func destinationForIndex(_ index: Int) -> AnyView {
        switch index {
        case 0:
            return AnyView(DetailView2fa())
        case 1:
            return AnyView(DetailViewGPS())
        case 2:
            return AnyView(DetailViewAI())
        case 3:
            return AnyView(DetailViewSSO())
        case 4:
            return AnyView(DetailViewWR())
        case 5:
            return AnyView(DetailViewHTTP())
        default:
            return AnyView(DetailViewRegulation())
        }
    }

    var body: some View {
        
            ScrollView() {
                VStack() {

                    // Iterazione sugli insights
                    ForEach(myData.insights.indices) { index in
                        let insight = myData.insights[index]

                        // Utilizzo di NavigationLink per ciascun insight
                        Button(action: {
                            // Azione per gli altri pulsanti
                            print("Button for \(insight.name) clicked!")
                            // Puoi navigare verso una pagina diversa qui
                            // Esempio: self.navigationLinkToPage(for: insight)
                        }) {
                            NavigationLink(destination: destinationForIndex(index)) {
                                ZStack(alignment: .bottomLeading) {
                                    Image(insight.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 200)
                                    Rectangle().fill(LinearGradient(colors: [.clear, .black.opacity(0.8)], startPoint: .top, endPoint: .bottom))

                                    VStack(alignment: .leading) {
                                        HStack{
                                            Image(systemName: insight.symbol)
                                            Text(insight.name)
                                                .font(.title)
                                                .bold()
                                            
                                        }
                                        
                                    }//end VStack
                                    .foregroundColor(Color.white)
                                    .padding()
                                } //end ZStack
                            }
                        }
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                    Button(action: {
                        // Azione per il bottone "Privacy Regulation in Italy"
                        print("Privacy Regulation in Italy button clicked!")
                        // Puoi navigare verso la vista DetailViewRegulation qui
                        // Esempio: self.navigationLinkToPage(for: someInsight)
                    }) {
                        NavigationLink("Privacy Regulation in Italy", destination: DetailViewRegulation())
                            .font(.title)
                            .foregroundColor(.blue)
                            .padding(.top, 20)
                    }
                }
                
            }
            .navigationTitle("Insights")
        
    }
}

struct InsightsListView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsListView()
    }
}
