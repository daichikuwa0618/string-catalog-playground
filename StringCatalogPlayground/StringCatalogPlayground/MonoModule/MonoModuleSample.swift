//
//  MonoModuleSample.swift
//  StringCatalogPlayground
//
//  Created by Daichi Hayashi on 2023/11/09.
//

import SwiftUI
import Utility

struct MonoModuleSample: View {
    var body: some View {
        Text("This is single module sample")
    }
}

#Preview {
    LocalizedVStack {
        MonoModuleSample()
    }
}
