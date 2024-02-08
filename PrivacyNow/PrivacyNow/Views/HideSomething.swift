import SwiftUI
struct HideSomething: View {
    
    var word: String
    @StateObject var viewModel = PrivacyAssessmentViewModel()
    
    var body: some View {
        
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


    func generateRandomText() -> String {
        // Implementa la logica per generare il testo casuale qui
        return "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet dui consequat, venenatis nisi id, laoreet turpis. Fusce aliquam, velit id aliquam lacinia, odio risus placerat est, non ultricies justo sapien at libero. Pellentesque at cursus neque, et fringilla erat. Donec id sodales nisl. Pellentesque est arcu, volutpat eu condimentum a, sollicitudin lacinia metus. Donec lectus lorem, aliquet ac faucibus quis, efficitur vitae massa. Pellentesque justo sem, interdum a scelerisque vitae, scelerisque eu lorem. Nunc commodo metus a accumsan dictum. Morbi lacinia enim non viverra feugiat. Donec libero tortor, ullamcorper nec mi sed, fringilla maximus elit. Nam lectus quam, cursus nec euismod ac, lobortis quis ex. Aenean nec enim sollicitudin, rutrum purus et, aliquam lacus. Donec accumsan posuere lorem nec aliquam. Etiam sem nulla, vulputate at urna in, dictum egestas dolor. In eu lobortis metus, id imperdiet dolor. Praesent viverra tristique libero. Duis sapien justo, gravida a libero vel, pharetra interdum turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus convallis velit eget justo luctus suscipit quis et ipsum. In viverra risus est, eget egestas augue congue a. Curabitur iaculis ex a ipsum semper ornare. Phasellus eu odio vel dui porta ultricies fermentum sed dolor. Aliquam vitae metus nec arcu maximus porta. Nulla aliquam tortor eget ante feugiat, non tincidunt felis eleifend. Quisque suscipit massa nec magna efficitur efficitur. Integer feugiat enim tellus, quis feugiat sem iaculis vitae. Duis vulputate tristique nunc. Phasellus id sem vitae ex placerat tristique quis sit amet velit. Ut blandit, erat sed iaculis rhoncus, felis justo mattis neque, euismod luctus arcu lorem eget lectus. Nullam ante tellus, luctus sed felis ut, ullamcorper dignissim nibh. Mauris aliquet lectus eu vestibulum elementum. Nulla quis rhoncus augue, vitae vestibulum nisl. Proin ac consectetur nulla, non consectetur nisi. Fusce egestas dignissim elementum. Quisque congue dictum erat eu blandit. Curabitur semper libero quis leo congue suscipit. Maecenas tempor odio massa, suscipit mollis enim lacinia in. Ut id tempor est, at tincidunt nulla. In vehicula neque pellentesque nibh mollis, id ultricies quam sollicitudin. Vivamus et neque facilisis, ultricies dolor non, dapibus ipsum. Donec sit amet massa purus. Praesent eget leo metus. Nunc eget malesuada sapien, nec suscipit massa. Fusce blandit et arcu non egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum lobortis odio et elementum maximus. Ut sed sapien sed nunc finibus tempor eu laoreet arcu. Nunc in ante non nibh ultricies sagittis. Sed ac orci venenatis, porta mi tincidunt, pretium mauris. Aliquam iaculis, turpis ac luctus egestas, urna nibh semper turpis, id pulvinar diam odio eu massa. Nullam dolor turpis, placerat non cursus eu, sollicitudin sit amet sapien. Ut scelerisque mollis efficitur. Vivamu"
    }
}

#if DEBUG
struct HideSomething_Previews: PreviewProvider {
    static var previews: some View {
        HideSomething(word:"Job")
    }
}
#endif

