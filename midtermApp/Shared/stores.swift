//
//  stores.swift
//  midtermApp
//
//  Created by Hyemi Byun on 3/10/21.
//

import SwiftUI
import MapKit

struct stores: View {
    var body: some View {
        NavigationView {
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    VStack{
                        Text("Need supplies?")
                            .font(Font.custom("Didot", size: 40))
                            .fontWeight(.bold)
                        HobbyLobby()
                        Michaels()
                        Joann()
                    }
                )
        }
    }
}

struct stores_Previews: PreviewProvider {
    static var previews: some View {
        stores()
    }
}
struct HobbyLobby: View {
    var body: some View {
        VStack (spacing:-20) {
            NavigationLink(
                destination: MapView(thelatOne:33.95097978162091,thelongOne:-83.37497351532714,thelatTwo: 33.92138551207407, thelongTwo: -83.454689),
                label: {
                    Text("Hobby Lobby Standard Map")
                        .font(Font.custom("Times New Roman", size: 30))
                        .padding()
                })
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .border(Color.black)
                .background(Color("darkBlueButton"))
                .padding()
        }
    }
}

struct Michaels: View {
    var body: some View {
        VStack (spacing:-20) {
            NavigationLink(
                destination: MapView(thelatOne:33.95097978162091,thelongOne:-83.37497351532714,thelatTwo: 33.94504293079697, thelongTwo: -83.4093589306799),
                label: {
                    Text("Michaels Standard Map")
                        .font(Font.custom("Times New Roman", size: 30))
                        .padding()
                })
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .border(Color.black)
                .background(Color("middleBlueButton"))
                .padding()
        }
    }
}

struct Joann: View {
    var body: some View {
        VStack (spacing:-20) {
            NavigationLink(
                destination: MapView(thelatOne:33.95097978162091,thelongOne:-83.37497351532714,thelatTwo: 33.94249276287828, thelongTwo: -83.43943096135985),
                label: {
                    Text("Joann Standard Map")
                        .font(Font.custom("Times New Roman", size: 30))
                        .padding()
                })
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .border(Color.black)
                .background(Color("lightBlueButton"))
                .padding()
        }
    }
}

