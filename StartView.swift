import SwiftUI

struct StartView: View {
    private let rotationChangePublisher = NotificationCenter.default
            .publisher(for: UIDevice.orientationDidChangeNotification)

    var body: some View {
        NavigationView{
            ZStack {
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.44606655836105347, green: 0.39395830035209656, blue: 0.7749999761581421, alpha: 1)))
                    .scaledToFill()
                
                Image("rectangleStart")
                    .imageScale(.large)
                
                HStack{
                    Image("imgStart")
                        .imageScale(.large)
                    
                    VStack{
                        Text("Ohana")
                            .font(.system( size: 110,
                                weight: .bold,
                                design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        
                        NavigationLink( destination: familyNikoView()){
                            ZStack{
                                RoundedRectangle(cornerRadius: 7)
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(width: 124, height: 47)
                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                                
                                Text("Start")
                                    .font(.system( size: 30,
                                        weight: .semibold,
                                        design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.45, green: 0.39, blue: 0.78, alpha: 1))).multilineTextAlignment(.center)
                            }.padding(.top, -30)
                        }
                    }
                }
            }.navigationBarHidden(true)
                .onAppear {
                                changeOrientation(to: .landscapeLeft)
                            }
            
        }.navigationViewStyle(StackNavigationViewStyle())
            .onReceive(rotationChangePublisher) { _ in
                        changeOrientation(to: .landscapeLeft)
                    }.navigationBarHidden(true)
    }
    
    func changeOrientation(to orientation: UIInterfaceOrientation) {
            if UIDevice.current.orientation != .landscapeLeft && UIDevice.current.orientation != .landscapeRight {
                UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
                print("Changing to", orientation.isPortrait ? "Portrait" : "Landscape")
            }
        }
}
