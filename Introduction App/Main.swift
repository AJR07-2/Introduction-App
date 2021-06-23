//
//  Main.swift
//  Introduction App
//
//  Created by Ang Jun Ray on 23/6/21.
//

import SwiftUI

struct Main: View {
    var body: some View {
        VStack{
            Text("Im Jun Ray :)")
                .font(.bold(.title)())
            Image("Me")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .clipShape(Circle())
            VStack{
                Text("Find Me Here:")
                    .font(.title3)
                    .bold()
                
                HStack{
                    Button(action: {}, label: {
                        Link(destination: URL(string: "https://github.com/AJR07")!, label: {
                            Image("Github")
                                .resizable()
                                .frame(width: 90, height: 90, alignment: .leading)
                        })
                    })
                }
                .frame(width: 400, height: 100, alignment: .center)
                .background(Color.yellow)
                .cornerRadius(1000.0)
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
