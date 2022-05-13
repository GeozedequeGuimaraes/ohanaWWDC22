import SwiftUI

struct familyLiloView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.44606655836105347, green: 0.39395830035209656, blue: 0.7749999761581421, alpha: 1)))
                .scaledToFill()
                
                ZStack {
                    ZStack {
                        Image("familyLilo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(40)
                        
                        Text("Lilo lives with both her parents, Carlos and João, and they assisted  Niko and Lilo on their quest to undercover the name meaning")
                            .font(.system( size: 27,
                                    weight: .semibold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.18, blue: 0.18, alpha: 0.77)))
                            .padding(.top, 920)
                            .padding(.leading, 30)
                            .padding([.leading, .bottom, .trailing], 295)
                            
                    }
                    NavigationLink( destination: OhanaMeaningView()){
                        ZStack {
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.5107964277267456, green: 0.6499999761581421, blue: 0.1733333170413971, alpha: 1)))
                            .frame(width: 61, height: 61)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                            Image("polygon")
                            
                        }.padding(.top, 870.0)
                         .padding(.leading, 1000.0)
                    }
                    }
        }.navigationBarHidden(true)
    }
}
