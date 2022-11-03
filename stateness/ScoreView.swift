//
//  ScoreView.swift
//  stateness
//
//  Created by Lutaka Muyoba Chihota on 10/30/22.
//

import SwiftUI

struct ScoreView: View {
    @EnvironmentObject var score:GameScore
    var body: some View{
        VStack{
            Text("The Score is \(score.numericalScore)!")
            
            Text("The Piece count is \(score.piecesCaptured)!")
            
            Spacer()
            
            Image("photo1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
                .border(Color.blue, width: 1)
                .clipShape(Capsule())
            
            /*Image("photo2")
                .resizable()
                .frame(width: 300, height: 300, alignment: .top)
                .aspectRatio(contentMode: .fit)
                .border(Color.blue, width: 2)*/
            
            //AsyncImage(url: )
            AsyncImage(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/fireapp-28f20.appspot.com/o/FIAMImages%2Fannouncement_image.png?alt=media&token=6fd6af86-862b-4688-95ba-c2a8e22c751d"), content: { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: .center)
                    .border(Color.blue, width: 1)
            }, placeholder: {
                ProgressView()
            })
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 300, alignment: .center)
            .border(Color.blue, width: 1)
            .clipShape(Capsule())
        }
    }
}


/*struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}*/
