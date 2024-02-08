import SwiftUI

struct DetailViewSSO: View {
    @State private var isHeartSelected = false

    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ZStack {
                    Image("2fa")
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
                                            Text("SSO:Single Sign-On")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .offset(x:-40, y:4)
                                                .bold()
                                        )
                                       
                                
                            
                            .frame(height: 60)
                            .edgesIgnoringSafeArea(.all)
                            .offset(x: 0, y: 170)
                 
                    }
                }

                HStack(spacing: 5) {
                    ZStack{ Rectangle().frame(width: 40, height: 40)
                            Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 40, height: 40)
                            }
                    
                    

                    VStack(alignment: .leading, spacing: 3) {
                        Text("Andrea De Prophetis")
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

                        Image(systemName: isHeartSelected ? "heart.fill" : "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                }
                .frame(width: 60, height: 57)
                .offset(x: UIScreen.main.bounds.width - 80, y: -80)
                
                
                

                Text("SSO is an authentication scheme that allows a user to log in with a single ID to any of several related software systems. It should not be confused with same-sign on (Directory Server Authentication), often accomplished by using the Lightweight Directory Access Protocol and stored LDAP databases on servers. A simple version of single sign-on can be achieved over IP networks using cookies but only if the sites share a common DNS parent domain. For clarity, a distinction is made between Directory Server Authentication (same-sign on) and single sign-on: Directory Server Authentication refers to systems requiring authentication for each application but using the same credentials from a directory server, whereas single sign-on refers to systems where a single authentication provides access to multiple applications by passing the authentication token seamlessly to configured applications. Conversely, single sign-off or single log-out (SLO) is the property whereby a single action of signing out terminates access to multiple software systems. As different applications and resources support different authentication mechanisms, single sign-on must internally store the credentials used for initial authentication and translate them to the credentials required for the different mechanisms. Other shared authentication schemes, such as OpenID and OpenID Connect, offer other services that may require users to make choices during a sign-on to a resource, but can be configured for single sign-on if those other services (such as user consent) are disabled. An increasing number of federated social logons, like Facebook Connect, do require the user to enter consent choices upon first registration with a new resource, and so are not always single sign-on in the strictest sense.")
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

struct DetailViewSSO_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewSSO()
    }
}
