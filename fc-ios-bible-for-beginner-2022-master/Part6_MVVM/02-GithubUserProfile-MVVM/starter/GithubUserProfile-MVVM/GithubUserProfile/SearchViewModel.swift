//
//  SearchViewModel.swift
//  GithubUserProfile
//
//  Created by TAEJANIM on 2022/08/02.
//

import Foundation
import Combine

final class SearchViewModel {
    
    let network: NetworkService
    
    init(network: NetworkService, selectedUser: UserProfile?) {
        self.network = network
        self.selectedUser = CurrentValueSubject(selectedUser)
    }
    
    var subscriptions = Set<AnyCancellable>()
    
    // Data => Output
    let selectedUser: CurrentValueSubject<UserProfile?, Never>
    
    var name: String {
        return selectedUser.value?.name ?? "n/a"
    }
    var login: String {
        return selectedUser.value?.login ?? "n/a"
    }
    var followers: String {
        guard let value = selectedUser.value?.followers else { return "n/a" }
        return "followers: \(value)"
    }
    var following: String {
        guard let value = selectedUser.value?.following else { return "n/a" }
        return "following: \(value)"
    }
    var imageURL: URL? {
        return selectedUser.value?.avatarUrl
    }
    
    // User Action => Input
    func search(keyword: String) {
        let resource = Resource<UserProfile>(base: "https://api.github.com/", path: "users/\(keyword)", params: [:], header: ["Content-Type": "application/json"])
        
        network.load(resource)
            .receive(on: RunLoop.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    self.selectedUser.send(nil)
                    print("error: \(error)")
                case .finished: break
                }
            } receiveValue: { user in
                self.selectedUser.send(user)
            }.store(in: &subscriptions)
    }
}
