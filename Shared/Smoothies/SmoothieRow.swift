//
//  SmoothieRow.swift
//  AOTSmoothie (iOS)
//
//  Created by Daniel Mandea on 15/07/2020.
//

import SwiftUI
import SmoothieModels

struct SmoothieRow: View {
    
    var smoothie: Smoothie
    
    var body: some View {
        HStack(alignment: .center) {
            Image(smoothie.image)
                .resizable()
                .frame(width: 100, height: 100)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            VStack(alignment:.leading) {
                Text(smoothie.title)
                    .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .font(.headline)
                Text(smoothie.ingredients)
                    .font(.body)
                Text(smoothie.calories)
                    .font(.body)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct SmoothieRow_Previews: PreviewProvider {
    static var previews: some View {
        SmoothieRow(smoothie: Smoothie(title: "Berry Blue", description: "Filling and refreshing, this smoothie will fill you with joy!", ingredients: "Orange, Blue Berry and Avocado", calories: "350 Calories "))
    }
}
