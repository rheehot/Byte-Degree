//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by TAEJANIM on 2022/08/08.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false
    @Published var selectedItem: AppleFramework?
}
