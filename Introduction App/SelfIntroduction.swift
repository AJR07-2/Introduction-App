//
//  SelfIntroduction.swift
//  Introduction App
//
//  Created by Ang Jun Ray on 23/6/21.
//

import SwiftUI

struct SelfIntroduction: View {
    var body: some View {
        VStack{
            Text("Hiiiii I am the one and only.... introduction app!!!!")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            Image(systemName: "hand.wave")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
            VStack{
                Text("Find me on github here:")
                    .font(.title)
                Link(destination: URL(string: "https://github.com/AJR07-2/Introduction-App")!, label: {
                    Image("Github")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                })
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(50)
            
            Text("I have been made during the tight time that an instructor gave us and told us too SOON.")
        }
    }
}

struct SelfIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        SelfIntroduction()
    }
}
