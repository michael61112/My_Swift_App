//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Ｍichael on 2021/2/24.
//  『Chapter 3』 Working with Images and Labels

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        /* 3-1. Displaying a System Image*/
        // To use the symbols, an app called SF Symbols (https://developer.apple.com/sf-symbols/)
        Image(systemName: "cloud.heavyrain")
            .font(.system(size: 100))
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            
        /* 3-2. Using Your Own Images*/
        Image("paris") // Push the image into Assets.xcassets

        /* 3-2-1. Resizing an Image*/
        // Since the image is a high resolution image (4437x6656 pixels), you can only see a part of the image.
        Image("paris")
            .resizable() // By default, the image resizes the image using the stretch mode. This means the original image will be scaled to fill the whole screen (except the top and bottom area).
            .edgesIgnoringSafeArea(.all) //Follow by resizable. You can choose to ignore the safe area for a specific edge.
        
        /* 3-2-2. Aspect Fit and Aspect Fill*/
        // If you look into both images in the previous section and compare it with the original one, you should find that the aspect ratio is a bit distorted. The stretch mode doesn't care the aspect ratio of the image. It just keeps stretching each side to fit the view area.
        Image("paris")
            .resizable()
            //.scaledToFit() // To keep the original aspect ratio
            .aspectRatio(contentMode: .fit) // Alternatively // In some cases you may want to keep the aspect ratio of the image but stretch the it to as large as possible.
            .frame(width: 300) // Setting the frame's width

        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fill) // Make the image to fill the screen, and keep ratio. But maybe overflow.
            .frame(width: 300) // It still takes up the whole screen width.
            .clipped()
        
        /* Creating a Circular Image*/
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
            .clipShape(Circle()) // Ellipse(), Capsule()

        /* 3-3. Adjusting the Opacity*/
        // You pass a value between 0 and 1 to indicate the opacity of the image.	
        /*  3-3-1. Applying an Overlay to an Image*/
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
            .clipShape(Circle())
            .opacity(0.5)
            .overlay(
                    Image(systemName: "heart.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .opacity(0.5)
            )

        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(

                Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast.\n\n- Ernest Hemingway")
                    .fontWeight(.heavy)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .opacity(0.8)
                    .padding(),

                alignment: .top //  For the overlay modifier, you can provide an optional value to adjust the alignment of the view. (.center or .bottom)
            )
        /* 3-3-2. Darken an Image Using Overlay*/
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Rectangle() // Draw a rectangle
                    .foregroundColor(.black)
                    .opacity(0.4)
            )

        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            .overlay(
                Color.black // Alternatively
                    .opacity(0.4)
                    .overlay(
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width: 200)
                    )
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
