import SwiftUI

struct OhanaMeaningView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.44606655836105347, green: 0.39395830035209656, blue: 0.7749999761581421, alpha: 1)))
                .scaledToFill()
            
            Image("text")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 30)
            Text("Ohana translates to “family” in the havana language but  it has a much broader meaning of family that goes beyond people that share blood ties and embraces the diversity, showing the real value of this name and how important it is to recognize and respect the differences.")
                .font(.system( size: 27,
                        weight: .semibold, design: .rounded))                .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.18, blue: 0.18, alpha: 0.77)))
                .padding(.top, 270)
                .padding(.leading, 30)
                .padding([.leading, .bottom, .trailing], 280)
            
            NavigationLink( destination: LastOnboardingView()){
                ZStack {
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.5107964277267456, green: 0.6499999761581421, blue: 0.1733333170413971, alpha: 1)))
                    .frame(width: 65, height: 65)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    Image("polygon")
                    
                }.padding(.top, 255.0)
                 .padding(.leading, 960.0)
            }

        }.navigationBarHidden(true)
    }
}
