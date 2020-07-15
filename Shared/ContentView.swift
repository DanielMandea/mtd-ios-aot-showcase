//
//  ContentView.swift
//  Shared
//
//  Created by Daniel Mandea on 15/07/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView() {
            List(viewModel.entries) { smoothie in
                SmoothieRow(smoothie: smoothie)
            }
            .navigationBarTitle(Text("AOT Smoothie"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
