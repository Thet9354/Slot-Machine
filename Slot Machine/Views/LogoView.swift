//
//  LogoView.swift
//  Slot Machine
//
//  Created by Phoon Thet Pine on 28/10/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 256, idealWidth: 290, maxWidth: 290, minHeight: 112, idealHeight: 130, maxHeight: 130, alignment: .center)
            .padding(.horizontal)
            .layoutPriority(1)
            .modifier(ShadowModifier())
    }
}


#Preview {
    LogoView()
}
