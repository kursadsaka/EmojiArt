//
//  PaletteManager.swift
//  EmojiArt
//
//  Created by Kürşad Saka on 29.03.2022.
//

import SwiftUI

struct PaletteManager: View {
    
    @EnvironmentObject var store: PaletteStore
    
    var body: some View {
        List {
            ForEach(store.palettes) { palette in
                VStack(alignment: .leading) {
                    Text(palette.name)
                    Text(palette.emojis)
                }
            }
        }
    }
    
}

struct PaletteManager_Previews: PreviewProvider {
    static var previews: some View {
        PaletteManager()
            .previewDevice("iPhone 8")
            .environmentObject(PaletteStore(named: "Preview"))
    }
}
