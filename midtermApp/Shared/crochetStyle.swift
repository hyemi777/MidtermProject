//
//  crochetStyle.swift
//  midtermApp
//
//  Created by Hyemi Byun on 3/9/21.
//

import SwiftUI

struct crochetStyle: View {
    @State var Numb = 0
    let crochetType = ["Single Crochet", "Double Crochet", "Slip Stitch Crochet","Treble Crochet Stitch", "Half Double Crochet"]
    let crochetPic = ["singleStitch", "doubleStitch", "slipStitch", "trebleStitch", "halfDoubleStitch"]
    
    var body: some View {
        NavigationView {
            List(0..<crochetType.count) { item in
                NavigationLink(destination: VStack {
                    VStack {
                        Text(self.crochetType[item])
                            .font(Font.custom("Times New Roman", size: 50))
                        VStack{
                            Image(self.crochetPic[item])
                                .resizable()
                                .frame(width: 200, height: 200)
                                .padding(.bottom, 50)
                            
                                Text("Number of stitches:")
                                    .font(Font.custom("Times New Roman", size: 35))
                                    .foregroundColor(.black)
                            HStack{
                                midtermApp.decrease(Numb: $Numb)
                                midtermApp.increase(Numb: $Numb)
                                
                            }
                            midtermApp.reset(Numb: $Numb)
                            
                        }
                    }
                }
                ){
                    HStack (alignment: .center){
                        Text(self.crochetType[item])
                            .font(.body)
                        Spacer()
                        Image(self.crochetPic[item])
                            .resizable()
                            
                            .frame(width: 200, height: 150)
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                            
                        
                    }
                }
            }
            .navigationBarTitle("Type of Stitches")
            .font(.title)
        }
        
    }
}

struct crochetStyle_Previews: PreviewProvider {
    static var previews: some View {
        crochetStyle()
    }
}

struct increase: View {
    @Binding var Numb: Int
    var body: some View {
        Button (action: {
            self.Numb += 1
        }) {
            Text("Increase")
                .font(Font.custom("Times New Roman", size: 30))
                .foregroundColor(.black)
                .padding(.leading)
                    
        }
        
    }
}
struct decrease: View {
    @Binding var Numb: Int
    var body: some View {
        Button (action: {
            self.Numb -= 1
        }) {
        
                Text("Decrease   \(self.Numb)")
                    .font(Font.custom("Times New Roman", size: 30))
                    .foregroundColor(.black)
        }
        
    }
}
struct reset: View {
    @Binding var Numb: Int
    var body: some View {
        Button (action: {
            self.Numb = 0
        }) {
        
            Text("Reset")
                .font(Font.custom("Times New Roman", size: 30))
                .foregroundColor(.black)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.purple, lineWidth: 5)
                )
        }
        
        
    }
}
