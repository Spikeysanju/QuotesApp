//
//  Home.swift
//  Quotify
//
//  Created by Spikey Sanju on 16/08/20.
//  Copyright © 2020 Spikey Sanju. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var viewModel = QuoteViewModel()
    
    var body: some View {
        
        ZStack {
            
            // if result is empty -> show indicator
            if self.viewModel.quotes.isEmpty {
                Indicator()
            } else {
                // iterate each quote from the result
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 30) {
                        ForEach(self.viewModel.quotes, id: \.quote){ result in
                            CardView(quote: result.self)
                        }
                    }
                }
            }
        }.onAppear{
            // Start Fetching Quotes
            self.viewModel.fetchQuotes()
        }.navigationBarTitle("Quotes")
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
