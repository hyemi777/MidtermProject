//
//  ideas.swift
//  midtermApp
//
//  Created by Hyemi Byun on 3/10/21.
//

import SwiftUI

struct ideas: View {
    @State var thetitle = "Octopus"
    @State var theimage = "octopus"
    @State var counter = 0
    var title = ["Octopus", "Bumblebee", "Heart", "Elephant", "Turtle"]
    var images = ["octopus", "bumblebee", "heart", "elephant", "turtle"]
    var links = ["https://blog.mohumohu.com/post/117524437877/amigurumi-octopus-pattern", "https://www.hookedbyrobin.com/blog/2019/03/amigurumi-bumblebee-free-crochet.html",
        "https://www.supergurumi.com/amigurumi-crochet-elephant-pattern",
        "https://www.crochet365knittoo.com/crochet-heart-pattern/", "https://www.allaboutami.com/pattern-amigurumi-turtle/"]
    var body: some View {
        NavigationView {
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .overlay(
            VStack{
                VStack{
                    Link(thetitle, destination: URL(string: links[counter])!)
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                    Image(theimage)
                        .resizable()
                        .frame(width: 300, height: 300)
                }
                Button(action:{
                    self.counter += 1;
                    if(self.counter == self.images.count){
                        self.counter = 0;
                    }
                    self.theimage=self.images[self.counter]
                        
                    self.thetitle=self.title[self.counter]
                }){
                    Text("New Project Idea")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color("lightPink"))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("lightPink"), lineWidth: 5)
                        )
                }
            }
            )
        }
       
    }
}




struct ideas_Previews: PreviewProvider {
    static var previews: some View {
        ideas()
    }
}
