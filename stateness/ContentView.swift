//
//  ContentView.swift
//  stateness
//
//  Created by Lutaka Muyoba Chihota on 10/29/22.
//

import SwiftUI

struct ContentView: View {
    //@State private var number:Int = 0
    @StateObject var gameScore = GameScore()
    var body: some View {
        NavigationView{
            VStack {
                //Stepper(value: $number, in: 0...10, label: {Text("Number is \(number)")})
                //Text("Socre is \(gameScore.numericalScore), \(gameScore.piecesCaptured) pieces captured.")
                //ScoreView(score: gameScore)
                
                    Button("Add Score!"){
                        gameScore.numericalScore += 1
                    }.buttonStyle(.bordered)
                    .padding()
                
                    Button("Add Piece"){
                        gameScore.piecesCaptured += 1
                    }.buttonStyle(.bordered)
                    .padding()
                
                NavigationLink(destination: ScoreView()){
                    Text("View Scores...")
                        .padding()
                }
            }
        }.environmentObject(gameScore)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
