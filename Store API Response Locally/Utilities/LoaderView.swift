//
//  LoaderView.swift
//  AsyncAwaitSwiftUI
//
//  Created by Masrafi Anam
//

import SwiftUI

struct LoaderView: View {
    var body: some View {
        ProgressView()
            .scaleEffect(2.0, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: .black))
    }
}

#Preview {
    LoaderView()
}
