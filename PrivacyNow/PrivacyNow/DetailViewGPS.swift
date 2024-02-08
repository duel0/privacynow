import SwiftUI

struct DetailViewGPS: View {
    @State private var isHeartSelected = false

    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ZStack {

                
                    Image("gps")
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
                                            Text("GPS Location: ")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .offset(x: -101, y: 5)
                                               
                                            
                                            
                                            
                                        )
                                       
                                        .overlay(
                                            Text("The Global Positioning System")
                                                .foregroundColor(.white)
                                                .offset(x: -65, y: 35)
                                                .font(Font.custom("SF Pro", size: 18).weight(.bold))
                                                .padding(.horizontal, 10.0)
                                                .foregroundColor(.black)
                                                .padding(10)
                                                
                                            
                                            
                                        )
                                        
                                
                            
                            .frame(height: 50)
                            .edgesIgnoringSafeArea(.all)
                            .offset(x: 0, y: 230)
                                            
                 
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
                .offset(x: 10, y: 60)

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

                 
                Text("The Global Positioning System (GPS), originally Navstar GPS, is a satellite-based radio navigation system owned by the United States government and operated by the United States Space Force. It is one of the global navigation satellite systems that provide geolocation and time information to a GPS receiver anywhere on or near the Earth where there is an unobstructed line of sight to four or more GPS satellites.").font(Font.custom("SF Pro", size: 18).weight(.bold))
                    .padding(.horizontal, 10.0)
                    .lineSpacing(10)
                    .foregroundColor(.black)
                    .padding(10)
                
                Text("It does not require the user to transmit any data, and operates independently of any telephonic or Internet reception, though these technologies can enhance the usefulness of the GPS positioning information. It provides critical positioning capabilities to military, civil, and commercial users around the world. Although the United States government created, controls and maintains the GPS system, it is freely accessible to anyone with a GPS receiver.").font(Font.custom("SF Pro", size: 18).weight(.bold)).padding(.horizontal, 10.0)
                                    .lineSpacing(10)
                                    .foregroundColor(.black)
                                    .padding(10)
                            }
                            .padding()
                        }
                    }
                }

                struct DetailViewGPS_Previews: PreviewProvider {
                    static var previews: some View {
                        DetailViewGPS()
                    }
                }
