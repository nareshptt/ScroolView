//
//  ContentView.swift
//  ScroolView
//
//  Created by students on 25/05/2024.
//

import SwiftUI

struct ContentView: View {
    let images = ["1","2","3","4","5"]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(images, id: \.self){
                    image in Image(image)
                        .resizable()
                        .containerRelativeFrame(.horizontal)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .scrollTransition { Content, phase in Content .scaleEffect(x: phase.isIdentity ? 1.0 : 0.8,
                                                                                   y: phase.isIdentity ? 1.0 : 0.8
                        )
                        .offset(y: phase.isIdentity ? 0: 200)
                            
                        }
                }
                
            }
        }
        .contentMargins(20)
        .background(.indigo)
    }
}

#Preview {
    ContentView()
}
