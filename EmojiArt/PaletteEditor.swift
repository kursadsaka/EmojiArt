//
//  PaletteEditor.swift
//  EmojiArt
//
//  Created by Kürşad Saka on 10.03.2022.
//

import SwiftUI

struct PaletteEditor: View {
    
    @Binding var palette: Palette
    
    var body: some View {
        
        Form {
            nameSection
            addEmojisSection
        }
        .frame(minWidth: 300, minHeight: 300)
        
    }
    
    var nameSection: some View {
        Section (header: Text("Name")) {
            TextField("Name", text: $palette.name)
        }
    }
    
    @State private var emojisToAdd = ""
    
    var addEmojisSection: some View {
        Section (header: Text("Add Emojis")) {
            TextField("", text: $emojisToAdd)
                .onChange(of: emojisToAdd) {emojis in
                    addEmojis(emojis)
                }
        }
    }
    
    func addEmojis(_ emojis: String) {
        withAnimation {
            palette.emojis = (emojis + palette.emojis)
                .filter { $0.isEmoji }
                .removingDuplicateCharacters
        }
    }
    
}

struct PaletteEditor_Previews: PreviewProvider {
    static var previews: some View {
        PaletteEditor(palette: .constant(PaletteStore(named: "Preview").palette(at: 4)))
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/))
    }
}
