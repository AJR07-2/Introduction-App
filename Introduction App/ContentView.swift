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
    @State var showHand = true
    
    @State var showMainPage = false
    @State var showSelfIntroductionPage = false
    var body: some View {
        VStack{
            Text("Hello, I'm Jun Ray!")
                .frame(width: 150, height: 150, alignment: .center)
                .font(.bold(.title)())
                .animation(.easeInOut)
            if(showHand){
                Image(systemName: "hand.wave")
                    .resizable()
                    .frame(width: CGFloat(handSize), height: CGFloat(handSize), alignment: .center)
                    .foregroundColor(.black)
                    .rotationEffect(Angle.init(degrees: Double(handRotation)))
                    .opacity(handAlpha)
            } else{
                Button(action: {
                    showHand = true
                    handSize = 100
                    handRotation = 0
                    handAlpha = 1.0
                }, label: {
                    Text("Revive my hand pleaseee")
                })
            }
            VStack{
                Button(action: {
                    showSelfIntroductionPage = true
                }, label: {
                    Text("This is an introduction app how could it not introduce itself!!!")
                        .frame(width: 300, height: 100, alignment: .center)
                        .font(.title3)
                        .foregroundColor(.blue)
                })
            }
        }
        .onTapGesture {
            withAnimation {
                handSize += 100
                handRotation += 180
                handAlpha -= 0.1
            }
            
            if(handAlpha <= 0.0){
                showMainPage = true
                showHand = false
            }
        }
        .sheet(isPresented: $showMainPage, content: {
            Main()
        })
        .sheet(isPresented: $showSelfIntroductionPage, content: {
            SelfIntroduction()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
