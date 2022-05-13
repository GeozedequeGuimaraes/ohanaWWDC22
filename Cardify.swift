import SwiftUI

struct Cardify: ViewModifier{
    var isFaceUp: Bool 
    var isMatched: Bool
    
    func body(content: Content) -> some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 5)
            
            if isFaceUp || isMatched{
                content
            }
            else{
                shape.fill().frame(width: 95, height: 142, alignment: .center)
                    .opacity(0.01)
            }
        }
    }
}

extension View{
    func cardify(isFaceUp: Bool, isMatched: Bool) -> some View{
        self.modifier(
            Cardify(
                isFaceUp: isFaceUp,
                isMatched:isMatched
            )
        )
    }
}
