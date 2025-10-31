//
//  ContentView.swift
//  Instafilter Daniel
//
//  Created by Daniel Lidman on 10/28/25.
//

import PhotosUI
import SwiftUI

struct ContentView: View {
    @State private var pickerItem: PhotosPickerItem?
    @State private var selectedImage: Image?

    var body: some View {
        VStack {
            PhotosPicker("Select a picture", selection: $pickerItem, matching: .images)
        }
        .onChange(of: pickerItem) {
            Task {
                selectedImage = try await pickerItem?.loadTransferable(type: Image.self)
            }
        }

        selectedImage?
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    ContentView()
}
