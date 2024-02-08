import SwiftUI

struct DetailViewWR: View {
    @State private var isHeartSelected = false

    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ZStack {
                    Image("reputation")
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
                                            Text("Check the Web Reputation ")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .offset(x: -15, y: -2)
                                                .bold()
                                               
                                            
                                            
                                            
                                        )
                                       
                                        .overlay(
                                            Text("Verification of the reputation that Web users ")
                                                .foregroundColor(.white)
                                                .offset(x:-12, y: 23)
                                                .font(Font.custom("SF Pro", size: 18).weight(.bold))
                                                .padding(.horizontal, 10.0)
                                                .foregroundColor(.black)
                                                .padding(10)
                                                
                                            
                                            
                                        )
                        
                                        .overlay(
                                            Text("have of a site")
                                                .foregroundColor(.white)
                                                .offset(x: -130, y:45)
                                                .font(Font.custom("SF Pro", size: 18).weight(.bold))
                                                .padding(.horizontal, 10.0)
                                                .foregroundColor(.black)
                                                .padding(10)
                                            )
                                        
                                
                            
                            .frame(height: 60)
                            .edgesIgnoringSafeArea(.all)
                            .offset(x: 0, y: 180)
                                            
                 
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
                        Text("Federica Bertini")
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

                 
                Text("Verifying a website’s Web Reputation can help you recognize a fake site by an authentic one. You can use search engines, such as Google, for this purpose. To do this, link to the home page of the search engine, write in the search bar in the center of the page the domain name of the site followed by opinions or reviews, Press the magnifying glass button and then select the result or results you think will interest you most.Another tool that can be very useful to verify the reputation of a site, is Trustpilot, which collects user opinions on many sites both Italian and international. Using it is simple: just type the address of the site to check in the search bar located in the center of the home page and select one of the suggestions that appear, at the bottom, while typing.").font(Font.custom("SF Pro", size: 18).weight(.bold))
                    .padding(.horizontal, 10.0)
                    .lineSpacing(10)
                    .foregroundColor(.black)
                    .padding(10)
                
                Text("Once you’ve spotted the site reviewed on Trustpilot, pay attention to all comments, especially negative ones, so you can spot a potential danger.Even social networks can be very useful to verify the reputation of a site. If, for example, the site you want to examine has an official Facebook page, linking to the latter and analyzing the comments section, you can easily detect the presence of complaints or complaints about any interruptions detected by users. On Twitter, however, a simple search for the site name should return all the tweets it appears in: if the tweets are all negative, it means that the site has something wrong!")
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

                struct DetailViewWR_Previews: PreviewProvider {
                    static var previews: some View {
                        DetailViewWR()
                    }
                }
