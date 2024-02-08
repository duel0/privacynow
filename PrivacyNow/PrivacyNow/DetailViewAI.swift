import SwiftUI

struct DetailViewAI: View {
    @State private var isHeartSelected = false

    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ZStack {
                    Image("ai")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: 481)

                    VStack(alignment: .leading, spacing: 10) {
                       

                        Rectangle()
                                        .foregroundColor(.clear)
                                        .background(
                                            LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .top, endPoint: .bottom)
                                        )
                                        .overlay(
                                            Text("Cyber-Security & AI ")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .offset(x: -45, y: 1)
                                                .bold()
                                               )
                                        .overlay(
                                            Text("Artificial intelligence for security")
                                                                                        .foregroundColor(.white)
                                                                                        .offset(x: -38, y: 30)
                                                                                        .font(Font.custom("SF Pro", size: 19).weight(.bold))
                                                                                        .padding(.horizontal, 10.0)
                                                                                        .foregroundColor(.black)
                                                                                        .padding(10)
                                                                                        
                                                                                    
                                                                                    
                                                                                )
                                       
                                        
                                        
                                
                            
                            .frame(height: 60)
                            .edgesIgnoringSafeArea(.all)
                            .offset(x: 0, y: 240)
                                            
                 
                    }
                }

                HStack(spacing: 5) {
                    ZStack{ Rectangle().frame(width: 40, height: 40)
                            Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 40, height: 40)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/40x40"))
                            )}
                    

                    VStack(alignment: .leading, spacing: 3) {
                        Text("Francesco Balassone")
                            .font(Font.custom("Quattrocento Sans", size: 18).weight(.bold))
                            .foregroundColor(Color(red: 0, green: 0.15, blue: 0.29))

                        Text("3 hours ago")
                            .font(Font.custom("Quattrocento Sans", size: 12))
                            .foregroundColor(Color(red: 0, green: 0.15, blue: 0.29))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(width: 260, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                )
                .cornerRadius(5)
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.25),
                    radius: 4,
                    y: 4
                )
                .offset(x: 20, y: 60)

                Button(action: {
                    isHeartSelected.toggle()
                }) {
                    ZStack {
                        Ellipse()
                            .foregroundColor(Color(red: 0.086, green: 0.53, blue: 0.94))
                            .frame(width: 60, height: 57)
                            .background(.clear)
                            .offset(x: UIScreen.main.bounds.width - 80, y: -30)

                        Image(systemName: isHeartSelected ? "heart.fill" : "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .offset(x: UIScreen.main.bounds.width - 80, y: -30)
                    }
                }

                 
                Text("Before examining the change in cybersecurity due to artificial intelligence systems, it is good to know some facts.One is used to linking artificial intelligence to computer programs such as voice assistants found in computers and mobile devices like Cortana or Siri, as well as Industry 4.0 related to technologies that support humans in performing complex tasks comes to mind. In reality, the evolution of the industry turns to the protection of computers and data. Indeed, malware and viruses can be blocked by artificial intelligences declined in various forms. Defense is one of the main goals of the experts' new proposals, but clearly there is a risk that hackers could use the same systems for their attacks.").font(Font.custom("SF Pro", size: 18).weight(.bold))
                    .padding(.horizontal, 10.0)
                    .lineSpacing(10)
                    .foregroundColor(.black)
                    .padding(10)
                Text("One should not be frightened because hackers and their attempts serve as a stimulus and example for increased efficiency of new cybersecurity products.Criminals operating on the Internet have at their disposal the dark web, which is a series of Internet sites on which malware and viruses can be purchased. In particular, these are AlphaBay and Hansa. These two portals were recently shut down due to bankruptcy, but there are other pages ready to offer the same service, and most importantly such news does not stop hackers intent on damaging others' networks or illegally taking possession of sensitive data.")
                                    .font(Font.custom("SF Pro", size: 18).weight(.bold))
                                    .padding(.horizontal, 10.0)
                                    .lineSpacing(10)
                                    .foregroundColor(.black)
                                    .padding(10)
                            }
                            .padding()
                        }
                    }
                }

                struct DetailViewAI_Previews: PreviewProvider {
                    static var previews: some View {
                        DetailViewAI()
                    }
                }
