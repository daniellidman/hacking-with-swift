//
//  RectangleDivider.swift
//  Moonshot Daniel
//
//  Created by Daniel Lidman on 9/22/25.
//

import SwiftUI

struct RectangleDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)

    }
}

#Preview {
    RectangleDivider()
}
