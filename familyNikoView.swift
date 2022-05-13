import SwiftUI

struct familyNikoView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.44606655836105347, green: 0.39395830035209656, blue: 0.7749999761581421, alpha: 1)))
                .scaledToFill()
                
                ZStack {
                    ZStack {
                        Image("familyNiko")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(40)
                        Text("Niko resides in the Ohana building alongside his lovely adorable family. Ever since the day he moved into, he’s got very curious about the place’s name, so he decided along with his friend Lilo to discover meaning of it")
                            .font(.system( size: 27,
                                    weight: .semibold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.18, blue: 0.18, alpha: 0.77)))
                            .padding(.top, 920)
                            .padding(.leading, 30)
                            .padding([.leading, .bottom, .trailing], 295)
                    }
                    
                    NavigationLink( destination: familyLiloView()){
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
