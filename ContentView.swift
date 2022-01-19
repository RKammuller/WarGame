//
//  ContentView.swift
//  war-challenge
//
//  Created by Ryan Kammuller on 12/30/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    
    var body: some View {
        
        ZStack() {
            Image("background")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack() {
                Spacer()
                Image("logo")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack() {
                    Spacer()
                    Image(playerCard)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image(cpuCard)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
            }
                Spacer()
                
                Button(action: {
                    
                    //Generate a random number between 2-13
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Updates the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack(spacing: 35.0) {
                VStack() {
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Text(String(playerScore))
                        .font(.title)
                        .foregroundColor(Color.white)
                }
                VStack() {
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Text(String(cpuScore))
                        .font(.title)
                        .foregroundColor(Color.white)
                }
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

