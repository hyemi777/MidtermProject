//
//  ContentView.swift
//  Shared
//
//  Created by Hyemi Byun on 3/8/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var directions: [String] = []
      @State private var showDirections = false
    var body: some View {
        NavigationView(){
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    VStack(alignment: .center){
                        Text("Basics of Crocheting")
                            .font(Font.custom("Zapfino", size: 30))
                        StitchStyles()
                        CraftStores()
                        ProjectIdeas()
                    }
                )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct homeButtons: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
        .foregroundColor(.white)
        .padding()
        .frame(maxWidth: .infinity)
        .border(Color.black)
        .background(Color("lightPink"))
        .padding()
    }
}

struct StitchStyles: View {
    var body: some View {
        NavigationLink(destination:crochetStyle()){
            Text("Stitch Styles")
                .font(Font.custom("Times New Roman", size: 30))
                .padding()
        }
        .buttonStyle(homeButtons())
    }
}

struct CraftStores: View {
    var body: some View {
        NavigationLink(destination:stores()){
            Text("Craft Stores")
                .font(Font.custom("Times New Roman", size: 30))
                .padding()
        }
        .buttonStyle(homeButtons())
    }
}

struct ProjectIdeas: View {
    var body: some View {
        NavigationLink(destination:ideas()){
            Text("Project Ideas")
                .font(Font.custom("Times New Roman", size: 30))
                .padding()
        }
        .buttonStyle(homeButtons())
    }
}

