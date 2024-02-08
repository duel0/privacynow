import SwiftUI

struct DetailViewHTTP: View {
    @State private var isHeartSelected = false

    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ZStack {
                    Image("http")
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
                                            Text("HTTPS: Hypertext Transfer")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .offset(x: -15, y: 1)
                                                .bold()
                                            
                                            
                                            
                                        )
                                       
                                        .overlay(
                                            Text("Protocol Secure")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .offset(x: -80, y: 32)
                                                .bold()
                                               
                                            
                                            
                                            
                                        )
                                       
                                        
                                
                            
                            .frame(height: 60)
                            .edgesIgnoringSafeArea(.all)
                            .offset(x: 0, y: 185)
                                            
                 
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
                        Text("Alessia Falocco")
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
                .offset(x: 20, y: 20)

                Button(action: {
                    isHeartSelected.toggle()
                }) {
                    ZStack {
                        Ellipse()
                            .foregroundColor(Color(red: 0.086, green: 0.53, blue: 0.94))
                            .frame(width: 60, height: 57)
                            .background(.clear)
                            .offset(x: UIScreen.main.bounds.width - 80, y: -80)

                        Image(systemName: isHeartSelected ? "heart.fill" : "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .offset(x: UIScreen.main.bounds.width - 80, y: -80)
                    }
                }

                 
                Text("On the web much of the information (html pages, photos, documents) is transferred (transmitted between a client and a server) using the HyperText Transfer Protocol (HTTP). HTTP works with a client/server architecture, that is, a client (for example: your pc's browser) makes a request and the server (for example: the machine on which the website resides) returns the response.HTTPS (HyperText Transfer Protocol over SSL) is nothing more than a secure, certified variant of HTTP. Basically, this protocol uses SSL (Secure Sockets Layer) to encrypt and authenticate transmitted data. SSL encrypts incoming and outgoing data through a mathematical algorithm making it virtually indecipherable.").font(Font.custom("SF Pro", size: 18).weight(.bold))
                    .padding(.horizontal, 10.0)
                    .lineSpacing(10)
                    .foregroundColor(.black)
                    .padding(10)
                Text("This type of communication ensures that only the client and the server are able to know the content of the communication (preventing third parties from reading or modifying that data).That is why, when we surf the Internet and in all cases where we communicate confidential information via the Web (e.g., credit card numbers) or conduct banking transactions, it is a good idea to make sure that the connection and transmission of data is done using the HTTPS protocol.For those who have a website, whether it is a corporate website, an e-commerce site or a blog, it is important to use the HTTPS protocol to ensure the secure transfer of our visitors' personal databut not only! Google, in fact, has decided to reward sites on HTTPS")
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

                struct DetailViewHTTP_Previews: PreviewProvider {
                    static var previews: some View {
                        DetailViewHTTP()
                    }
                }
