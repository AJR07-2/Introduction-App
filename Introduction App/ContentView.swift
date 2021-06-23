//
//  ContentView.swift
//  Introduction App
//
//  Created by Ang Jun Ray on 23/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var handSize = 100
    @State var handRotation = 0
    @State var handAlpha = 1.0
    
    @State var showMainPage = false
    var body: some View {
        VStack{
            Text("Hello, I'm Jun Ray!")
                .frame(width: 150, height: 150, alignment: .center)
                .font(.bold(.title)())
                .animation(.easeInOut)
            Image(systemName: "hand.wave")
                .resizable()
                .frame(width: CGFloat(handSize), height: CGFloat(handSize), alignment: .center)
                .foregroundColor(.black)
                .rotationEffect(Angle.init(degrees: Double(handRotation)))
                .opacity(handAlpha)
        }
        .onTapGesture {
            withAnimation {
                handSize += 100
                handRotation += 180
                handAlpha -= 0.1
            }
            
            if(handAlpha <= 0.0){
                showMainPage = true
                handAlpha = 1.0
                handSize = 100
            }
        }
        .sheet(isPresented: $showMainPage, content: {
            Main()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
