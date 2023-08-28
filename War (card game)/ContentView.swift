//
//  ContentView.swift
//  War (card game)
//
//  Created by Karthik  Chillara on 22/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card7"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
       
    
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
               
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    let playRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playRand)
                    cpuCard = "card" + String(cpuRand)
                    
//                    playerScore += 1
//                    cpuScore += 1
                    
                    if playRand>cpuRand{
                        playerScore += 1
                    }
                    else if playRand<cpuRand{
                        cpuScore += 1
                    }
                    else{
                        print("Draw!")
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                    
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font (.headline)
                            .foregroundColor (Color.white)
                            .padding (.bottom, 10.0)
                        Text(String(playerScore))
                            .font (.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font (.headline)
                            .foregroundColor (Color.white)
                            .padding (.bottom, 10.0)
                        Text(String(cpuScore))
                            .font (.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
            }
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
