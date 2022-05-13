import SwiftUI

class FamiliesMemoryGame: ObservableObject{
    typealias Card = MemoryGame<String>.Card
    
    private static let families = ["gay", "singleMother", "lesbian","grandparents","trans", "cis"]
    
    private static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            families[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card>{
        return model.cards
    }
    
    func choose (_ card: Card){
        model.choose(card)
    }
    
    func shuffle(){
        model.shuffle()
    }
    
}
