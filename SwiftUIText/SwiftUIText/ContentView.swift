import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("HYour time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .font(.custom("Chalkduster", size: 20))
            .fontWeight(.bold)
            .foregroundColor(.green)
            .multilineTextAlignment(.leading)
            .lineSpacing(10)
            .padding()
            .rotation3DEffect(.degrees(10), axis: (x: 100, y: 100, z: 100))
        Text("Hello World")
            .font(.system(size: 20))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
