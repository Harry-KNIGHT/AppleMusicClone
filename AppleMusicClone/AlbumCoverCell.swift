//
//  AlbumCoverCell.swift
//  SpotifyClone
//
//  Created by Elliot Knight on 07/02/2022.
//

import SwiftUI

struct AlbumCoverCell: View {
    var body: some View {
        Image("theDoors").resizable()//.frame(width: 350, height: 350, alignment: .center)
            .cornerRadius(10)
            .shadow(color: Color.black, radius: 15, x: 3, y: 3)
    }
}

struct AlbumCoverCell_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCoverCell()
    }
}
