import SwiftUI

struct ContentView: View {
    var body: some View {

        /* 2-1. Displaying a Simple Text*/
        Text("Hello World")
        
        /* 2-2. Changing the Font Type and Color*/
        Text("Stay Hungry. Stay Foolish.")
            .fontWeight(.bold) // You access the modifier by using the dot syntax. (heavy or black)
            //.font(.title) // (https://developer.apple.com/documentation/swiftui/font)
            .font(.system(.title, design: .rounded))
            /* Dynamic Type is a feature of iOS that automatically adjusts the font size in reference to the user's setting (Settings > Display & Brightness > Text Size). In other words, when you use text styles (e.g. .title), the font size will be varied and your app will scale the text automatically, depending on the user's preference.*/
            //In case you want to use a fixed-size font, you can write the line of code like this:
            .font(.system(size: 20))
            .foregroundColor(.green)
            /* Hold the command key and click the text to bring up a pop-over menu. Choose Show SwiftUI Inspector and then you can edit the text/font properties. */

        /* Using Custom Fonts*/
        Text("Stay Hungry. Stay Foolish.")
            .font(.custom("Helvetica Neue", size: 25)) // Finder > Application and click Font Book
        
        /* 2-3. Working with Multiline Text*/
        // Text supports multiple lines by default
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.gray)
            //.multilineTextAlignment(.center) // To align the text in centre
            //.lineLimit(3) // Limit the number of lines to a certain number. Default is "nil"
                //.truncationMode(.head) // Follow by lineLimit. By default, the system is set to use tail truncation(.head or .middle)

        /* 2-4. Setting the Padding and Line Spacing*/
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .lineSpacing(10)
            .padding()

        /* 2-5. Rotating the Text*/
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .lineSpacing(10)
            .padding()
            .rotationEffect(.degrees(45))
            /* By default, the rotation happens around the center of the text view. If you want to rotate the text around a specific point (say, the top-left corner)*/
            //.rotationEffect(.degrees(20), anchor: UnitPoint(x: 0, y: 0))

        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .lineSpacing(10)
            .padding()
            .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
        
        /* 2-6. Shadow Effect*/
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .lineSpacing(10)
            .padding()
            .shadow(color: .gray, radius: 2, x: 0, y: 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
