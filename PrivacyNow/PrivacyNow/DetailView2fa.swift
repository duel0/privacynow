import SwiftUI

struct DetailView2fa: View {
    @State private var isHeartSelected = false

    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ZStack {
                    
                    Image("sso")
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
                                            Text("2FA: Two-factor Authentication")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .offset(x: 0, y: 1)
                                               
                                           
                                           
                                           
                                        )
                                       
                                        .overlay(
                                            Text("Strong authentication or multi-factor")
                                                .foregroundColor(.white)
                                                .offset(x: -45, y: 30)
                                                .font(Font.custom("SF Pro", size: 18).weight(.bold))
                                                .padding(.horizontal, 10.0)
                                                .foregroundColor(.black)
                                                .padding(10)
                                               
                                           
                                           
                                        )
                                        .overlay(
                                            Text("authentication")
                            .foregroundColor(.white)
                            .offset(x: -130, y:50)
                            .font(Font.custom("SF Pro", size: 18).weight(.bold))
                            .padding(.horizontal, 10.0)
                            .foregroundColor(.black)
                            .padding(10)
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
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/40x40"))
                            )}
                   

                    VStack(alignment: .leading, spacing: 3) {
                        Text("Luisana Di Lauro")
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

                Text("2FA is the most secure security system we have to protect our accounts.")
                                    .font(Font.custom("SF Pro", size: 18).weight(.bold))
                                    .padding(.horizontal, 10.0)
                                    .lineSpacing(10)
                                    .foregroundColor(.black)
                                    .padding(10)

                                Text("Why is it important to use it? How does it work?")
                                    .padding(.horizontal, 10.0)
                                    .lineSpacing(10)
                                    .foregroundColor(.black)
                                    .padding(10)
                                    .font(.title)
                                    .fontWeight(.bold)

                                Text("It is estimated that today an average user has about a hundred passwords: impossible to manage all of them and also the probability that a password is stolen or discovered increases. How does it work? To access any digital system we must first introduce ourselves by entering our username. Then we will have to prove that it is us: this is the authentication phase that can take place in three different ways: Knowledge: One thing you know, for example a password or PIN. Possession: One thing you have, like a smartphone or a security token. Inherence: One thing you are, such as fingerprint, voice stamp, face, iris, or any other biometric data. It is 2FA if at least two of the three factors listed above are used. But it is not enough: the condition for defining two-factor authentication occurs only when the two factors used are of a different matrix: in other words, if, for example, you use Something you know + Something you have.").font(Font.custom("SF Pro", size: 18).weight(.bold))
                    .padding(.horizontal, 10.0)
                    .lineSpacing(10)
                    .foregroundColor(.black)
                    .padding(10)
                Text("Using 2FA is not difficult and we therefore have no reason not to adopt it: after entering the password (first factor) of your account, you will be required to type a second factor, which in most cases is a numeric code. This second factor is usually obtained through the smartphone (in the form of SMS or a special application) or through a physical token. Unlike the password, the second code is in fact unassailable because generated pseudorandomly according to a specific algorithm and has a very limited duration in time (usually 30 seconds). For this reason, it is also called OTP: one-time password.")
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

                struct PrivacyArticleView_Previews: PreviewProvider {
                    static var previews: some View {
                        DetailView2fa()
                    }
                }
