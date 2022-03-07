//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Kürşad Saka on 2.03.2022.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    
    //let document = EmojiArtDocument()
    let paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
    
}
