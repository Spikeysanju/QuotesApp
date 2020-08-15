//
//  QuoteViewModel.swift
//  Quotify
//
//  Created by Spikey Sanju on 16/08/20.
//  Copyright © 2020 Spikey Sanju. All rights reserved.
//

import Foundation
import SwiftUI


class QuoteViewModel: ObservableObject {
    
    @Published var quotes: [Quote] = []
    let url = "https://spikeysanju.github.io/QuotesAPI/api/shortadvice/index"
    
    
    // Fetch quotes from db
    func fetchQuotes(){
        
        let urlSession = URLSession(configuration: .default)
        
        urlSession.dataTask(with: URL(string: url)!) { (data, _, _) in
            
            guard let quotes = data else {return}
            
            do{
                let result = try JSONDecoder().decode([Quote].self, from: quotes)
                
                print(result)
                
                // Call network on main thread
                DispatchQueue.main.async {
                    self.quotes = result
                }
                
            } catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
}
