import SwiftUI

struct MemoryGameView: View {
    @ObservedObject var game: FamiliesMemoryGame
    
    var body: some View {
        ZStack {
            Image("backgroundImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
            NavigationLink( destination: StartView()){
                ZStack{
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 95, height: 35)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    
                    Text("Restart")
                        .font(.system( size: 22,
                            weight: .semibold,
                            design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.56, green: 0.77, blue: 0.29, alpha: 1)))
                        
                }.padding(.top, 540.0)
                    .padding(.leading, 70)
            }
            
            gameBady
                .frame(width: 525, height: 550, alignment: .center)
                .padding(.trailing, 253)
                .padding(.top, -142)
        }.navigationBarHidden(true)
    }
    
    var gameBady: some View{
        VStack{
            LazyVGrid(columns:[GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], alignment:.center, spacing: 55) {
                
                ForEach(game.cards) { card in
                    
                    CardView(card)
                        .aspectRatio(contentMode: .fill)
                        
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.4)){
                                game.choose(card)
                            }
                        }
                }.foregroundColor(.red)
                    
            }.padding(.top, -42)
        }
    }
}

struct CardView: View {
    private let card: FamiliesMemoryGame.Card
    
    init(_ card: FamiliesMemoryGame.Card){
        self.card = card
    }
    
    var body: some View{
        ZStack{
            Image(card.content)
                .padding(.top, 0.5)
        }
        .cardify(
            isFaceUp: card.isFaceUp,
            isMatched: card.isMatched
        )
    }
}
