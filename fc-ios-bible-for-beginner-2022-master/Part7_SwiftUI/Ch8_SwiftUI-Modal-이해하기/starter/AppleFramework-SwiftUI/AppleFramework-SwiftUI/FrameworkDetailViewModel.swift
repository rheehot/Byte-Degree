//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by TAEJANIM on 2022/08/08.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
