//
//  Main.swift
//  Introduction App
//
//  Created by Ang Jun Ray on 23/6/21.
//

import MobileCoreServices
import SwiftUI

struct Main: View {
    @State var showingAlert = false
    @State var showingDescription = false
    @State var descOpacity = 0.1
    var body: some View {
        VStack{
            HStack{
                Image("Me")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                VStack{
                    Text("Jun Ray")
                        .font(.bold(.title)())
                    Text("AJR")
                        .font(.callout)
                }
            }
            .padding()
            .border(Color.black)
            VStack{
                Text("Find Me Here:")
                    .font(.title3)
                    .bold()
                
                HStack{
                    Button(action: {}, label: {
                        Link(destination: URL(string: "https://github.com/AJR07")!, label: {
                            Image("Github")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .leading)
                        })
                    })
                    
                    Button(action: {}, label: {
                        Link(destination: URL(string: "angjunray@live.com")!, label: {
                            Image(systemName: "envelope.fill")
                                .resizable()
                                .frame(width: 60, height: 50, alignment: .leading)
                                .foregroundColor(.black)
                        })
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Link(destination: URL(string: "bit.ly/deccourse2021")!, label: {
                            Image("Youtube")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .leading)
                                .foregroundColor(.black)
                        })
                    })
                    .alert(isPresented: $showingAlert) {
                         Alert(title: Text("That link a bit sketchy right?"), message: Text("XD"), dismissButton: .default(Text("Yeah nice rickroll")))
                     }
                    
                    Button(action: {
                        descOpacity = 0.1
                    }, label: {
                        Link(destination: URL(string: "https://dunjudge.me/users/ajr/")!, label: {
                            Text("Dunjudge")
                        })
                    })
                }
                .frame(width: 400, height: 70, alignment: .center)
                .background(Color.yellow)
                .cornerRadius(1000.0)
            }
            
            if(showingDescription){
                VStack{
                    Text("Wow you found this nice")
                        .multilineTextAlignment(.leading)
                    Text("I guess it wasn't actually rlly that hidden...")
                        .multilineTextAlignment(.leading)
                    Text("Ah well i might as well just show my descriptions")
                        .multilineTextAlignment(.leading)
                    Text("My main hobby is essentially just coding...")
                        .multilineTextAlignment(.leading)
                    Text("HA JK I can't think of anything HA u  found this for absolutely.........NOTHING")
                        .multilineTextAlignment(.leading)
                }
                .opacity(descOpacity)
                .onTapGesture {
                    withAnimation {
                        descOpacity += 0.1
                    }
                }
            } else {
                Button(action: {
                    showingDescription = true
                }, label:{
                    Text("Hello I do not know what to write here")
                })
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
