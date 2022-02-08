//
//  BackgroundButtonItem.swift
//  AppleMusicClone
//
//  Created by Elliot Knight on 08/02/2022.
//

import SwiftUI

struct BackgroundButtonItem: View {
    var body: some View {
        Circle()
            .frame(width: 35, height: 35)
            .foregroundColor(CustomColor.myColor)
    }
}

struct BackgroundButtonItem_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundButtonItem()
    }
}
