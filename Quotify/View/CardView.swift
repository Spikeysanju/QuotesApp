//
//  CardView.swift
//  Quotify
//
//  Created by Spikey Sanju on 16/08/20.
//  Copyright © 2020 Spikey Sanju. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var quote: Quote
    var body: some View {
        HStack{
            
            Text(self.quote.quote)
                .font(.largeTitle)
                .foregroundColor(Color.black)
        }.padding(10)
            .background(Color.yellow)
    }
}
