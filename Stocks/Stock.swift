//
//  Stock.swift
//  Stocks
//
//  Created by Myers Elliott Mbonda on 2023-11-15.
//

import SwiftUI

struct Stock: View {
    let shortCompany: String
    let companyName: String
    let graph: String
    let price: String
    let percentage: String
    let rectangleColor: Color
    
    var body: some View {
        HStack {
            HStack {
                Spacer()
                VStack {
                    Text(shortCompany).font(.system(size: 23))
                    
                    
                    Text(companyName).font(.system(size:15))
                }
        
            }
            HStack {
                Image(graph)
                    .resizable()
                .frame(width: 68, height: 37)
                Spacer()
            }
            HStack {
                VStack {
                        Text(price)
                    
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(rectangleColor)
                                .frame(width: 70, height: 20)
                            Text(percentage).font(.system(size:12))
                            Spacer()
                        }
                    
                }
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    Stock(shortCompany: "bfebuvfuqe", companyName: "sduburbev", graph: "Stock1", price: "2432423", percentage: "243423", rectangleColor: .green)
}
