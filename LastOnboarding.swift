import SwiftUI

struct  LastOnboardingView: View {
    private let game = FamiliesMemoryGame()
    
    var body: some View {
        ZStack {
            Image("imagOpacity")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Image("text")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 40)
            Text("Niko realized that in his building there are many family sets, each very different from one another. Help Niko e Lilo to discover in this memory game what each of these families has in common even though they are so different even though they are so different from each other. By pressing the windows you will make the sets")
                .font(.system( size: 27,
                        weight: .semibold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.19, green: 0.18, blue: 0.18, alpha: 0.77)))
                .padding(.top, 320)
                .padding(.leading, 20)
                .padding([.leading, .bottom, .trailing], 310)
            
            NavigationLink( destination: MemoryGameView(game: game)){
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.5107964277267456, green: 0.6499999761581421, blue: 0.1733333170413971, alpha: 1)))
                    .frame(width: 137, height: 48)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    
                    Text("Let’s go")
                        .font(.system( size: 27,
                            weight: .semibold,
                            design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                }.padding(.top, 255.0)
                    .padding(.leading, 1000.0)
            }
        }.navigationBarHidden(true)
        
    }
}
