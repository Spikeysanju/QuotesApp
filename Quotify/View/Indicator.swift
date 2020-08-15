//
//  Indicator.swift
//  Quotify
//
//  Created by Spikey Sanju on 16/08/20.
//  Copyright © 2020 Spikey Sanju. All rights reserved.
//

import SwiftUI

struct Indicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
        
    }
}

