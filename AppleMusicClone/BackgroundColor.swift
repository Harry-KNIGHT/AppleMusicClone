//
//  BackgroundColor.swift
//  SpotifyClone
//
//  Created by Elliot Knight on 07/02/2022.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        Rectangle()
            .fill(
                LinearGradient(colors: [.brown, .black], startPoint: .top, endPoint: .bottom)
        ).frame(width: 400, height: 500)
    }
}

struct BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColor()
    }
}
