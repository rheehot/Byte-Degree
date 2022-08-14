//
//  MyPointViewModel.swift
//  TossBenefitTab
//
//  Created by TAEJANIM on 2022/08/14.
//

import Foundation

final class MyPointViewModel {
    @Published var point: MyPoint
    
    init(point: MyPoint) {
        self.point = point
    }
}
