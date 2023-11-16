//
//  ContentView.swift
//  Stocks
//
//  Created by Myers Elliott Mbonda on 2023-11-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            VStack{
                
                    
                    List {
                        
                        HStack {
                            Text("My Symbols").foregroundColor(.blue)
                            Image(systemName:"chevron.up.chevron.down").foregroundColor(.blue)
                        }
                        Group {
                            Stock(shortCompany: "AAPL", companyName: "Apple Inc.", graph: "greenwhite", price: "$188.01", percentage: "↑2.34%", rectangleColor: .green).listRowSeparator(.hidden)
                        
                        
                        
                        Stock(shortCompany: "SPOT", companyName: "Spotify  S.A.", graph: "redwhite", price: "$173.76", percentage:"↓1.02%", rectangleColor: .red).listRowSeparator(.hidden)
                        Stock(shortCompany: "AMZN", companyName: "Amazon Inc.", graph: "greenwhite", price: "$143.20", percentage: "↑1.78%", rectangleColor: .green).listRowSeparator(.hidden)
                        Stock(shortCompany: "GOOGL", companyName: "Alphabet Inc.", graph: "greenwhite", price: "$134.62", percentage: "↑3.21%", rectangleColor: .green).listRowSeparator(.hidden)
                        Stock(shortCompany: "NKE", companyName: "Nike Inc.", graph: "redwhite", price: "$107.82", percentage: "↓1.93%", rectangleColor: .red).listRowSeparator(.hidden)
                        Stock(shortCompany: "TSLA", companyName: "Tesla Inc.", graph: "greenwhite", price: "242.82", percentage: "↑5.43%", rectangleColor: .green).listRowSeparator(.hidden)
                            Stock(shortCompany: "WMT", companyName: "Walmart Inc", graph: "greenwhite", price: "$169.78", percentage: "↑0.33%", rectangleColor: .green)
                        
                        
                    }
                    
                }
                    .navigationTitle("Stocks")
                    
                    .listStyle(.plain)
                    .searchable(text: .constant(""),prompt: "Search")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action:{}){
                                Image(systemName:"ellipsis.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 25)
                                    .foregroundStyle(Color.gray)
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
