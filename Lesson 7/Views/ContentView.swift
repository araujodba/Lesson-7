//
//  ContentView.swift
//  Lesson 7
//
//  Created by Marcello Lima on 24/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var cards: CardModel
    
    var body: some View {
        GeometryReader { geo in
            TabView {
                ForEach(0..<cards.cardNumber.count) { index in
                    ZStack {
                        
                            
                            if #available(iOS 15.0, *) {
                                Rectangle()
                                    .cornerRadius(20)
                                    .foregroundColor(Color.init(uiColor: random()))
                                    .padding(20)
                                    .shadow(color: Color.init(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 10, x:-4 , y: 4)
                                
                            } else {
                                // Fallback on earlier versions
                                Rectangle()
                                    .cornerRadius(20)
                                    .foregroundColor(.purple)
                                    .padding(20)
                                    .shadow(color: .black, radius: 10, x:-4 , y: 4)
                            }

                        Image(systemName: "circle").resizable().scaledToFit().padding(40)
                        Text(String(cards.cardNumber[index]))
                            .font(.system(size: geo.size.height/3.8, weight: .medium, design: .rounded))
                    }.frame(width: geo.size.width - geo.size.width/60, height: geo.size.height - geo.size.height/18, alignment: .leading)
                        
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic ))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
    
    func random() -> UIColor {
                            return UIColor(red: .random(in: 0...1),
                                                           green: .random(in: 0...1),
                                                           blue: .random(in: 0...1),
                                                           alpha: 1.0)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CardModel())
    }
}
