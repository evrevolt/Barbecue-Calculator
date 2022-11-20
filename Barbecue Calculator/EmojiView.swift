//
//  EmojiView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

struct EmojiView: View {
    var body: some View {
        HStack {
            Text("🐣")
                .multilineTextAlignment(.leading)
                .font(.system(size: 30))
            Spacer()
            
            Text("🐺")
                .multilineTextAlignment(.center)
                .font(.system(size: 40))
            Spacer()
            Text("👹")
                .multilineTextAlignment(.trailing)
                .font(.system(size: 50))
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView()
    }
}
