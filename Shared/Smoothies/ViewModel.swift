//
//  ViewModel.swift
//  AOTSmoothie (iOS)
//
//  Created by Daniel Mandea on 15/07/2020.
//

import Foundation
import SwiftUI
import Combine
import SmoothieModels

class ViewModel: ObservableObject {
    
    private var cancellable: AnyCancellable?
    
    @Published var entries: [Smoothie] = []
    
    init() {
        fetchTopHeadlines()
    }
    
    func fetchTopHeadlines() {
        guard let url = URL(string: "http://localhost:8080/smoothie") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        self.cancellable = URLSession.shared.dataTaskPublisher(for: request)
            .tryMap() { element -> Data in
                guard let httpResponse = element.response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return element.data
            }
            .decode(type: [Smoothie].self, decoder: JSONDecoder())
            .replaceError(with: [Smoothie]())
            .receive(on: DispatchQueue.main)
            .assign(to: \.entries, on: self)
    }
}
