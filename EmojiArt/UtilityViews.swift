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
