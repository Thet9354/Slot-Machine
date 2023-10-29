//
//  ReelView.swift
//  Slot Machine
//
//  Created by Phoon Thet Pine on 28/10/23.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

#Preview {
    ReelView()
        .previewLayout(.fixed(width: 220, height: 220))
}
