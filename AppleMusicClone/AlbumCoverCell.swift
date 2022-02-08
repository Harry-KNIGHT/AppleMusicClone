//
//  AlbumCoverCell.swift
//  SpotifyClone
//
//  Created by Elliot Knight on 07/02/2022.
//

import SwiftUI

struct AlbumCoverCell: View {
    var body: some View {
        Image("theDoors").resizable().frame(width: 250, height: 250)
            .cornerRadius(10)
            .shadow(color: Color.black, radius: 15, x: 3, y: 3)
//            .overlay(RoundedRectangle(cornerRadius: 10))
//            .stroke(Color.primary, lineWidth: 10))
//            .resizable()
//            .scaledToFit()
//            .frame(width: 200, height: 200, alignment: .center)
    }
}

struct AlbumCoverCell_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCoverCell()
    }
}
