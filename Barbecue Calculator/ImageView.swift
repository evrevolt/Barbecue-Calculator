//
//  ImageView.swift
//  Barbecue Calculator
//
//  Created by Геннадий Ведерников on 20.11.2022.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("barbecue")
            .resizable()
            .frame(width: UIScreen.main.bounds.width,
                   height: 100)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
            .background(Color.black)
    }
}
