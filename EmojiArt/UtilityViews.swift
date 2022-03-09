//
//  UtilityViews.swift
//  EmojiArt
//
//  Created by Kürşad Saka on 6.03.2022.
//

import SwiftUI

struct OptionalImage: View {

    var uiImage: UIImage?
    
    var body: some View {
        if uiImage != nil {
            Image(uiImage: uiImage!)
        }
    }

}

struct AnimatedActionButton: View {
    
    var title: String? = nil
    var systemImage: String? = nil
    let action: () -> Void
    
    var body: some View {
        Button {
            withAnimation {
                action()
            }
        } label: {
            if title != nil && systemImage != nil {
                Label(title!, systemImage: systemImage!)
            } else if title != nil {
                Text(title!)
            } else if systemImage != nil {
                Image(systemName: systemImage!)
            }
        }
    }
    
}
