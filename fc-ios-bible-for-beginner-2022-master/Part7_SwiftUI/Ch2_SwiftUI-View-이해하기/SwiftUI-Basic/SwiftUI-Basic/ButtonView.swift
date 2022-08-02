//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by TAEJANIM on 2022/08/02.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("Button tapped")
        } label: {
            Text("Click Me")
        }

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
