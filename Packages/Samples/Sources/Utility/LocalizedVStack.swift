//
//  LocalizedVStack.swift
//  
//
//  Created by Daichi Hayashi on 2023/11/09.
//

import SwiftUI

public struct LocalizedVStack<Content: View>: View {
    let content: Content

    private let languageIDs = ["en", "ja"]

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        VStack {
            ForEach(languageIDs, id: \.self) { id in
                content
                    .environment(\.locale, .init(identifier: id))
            }
        }
    }
}

let title = String(localized: "Hello", bundle: .module)

#Preview {
    LocalizedVStack {
        Text(title)
    }
}
