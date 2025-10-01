//
//  AddressView.swift
//  Cupcake Corner Daniel
//
//  Created by Daniel Lidman on 10/1/25.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order

    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Street Address", text: $order.streetAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("City", text: $order.city)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Zip", text: $order.zip)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            Section {
                NavigationLink("Check out") {
                    CheckoutView(order: order)
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationTitle("Delivery Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}
