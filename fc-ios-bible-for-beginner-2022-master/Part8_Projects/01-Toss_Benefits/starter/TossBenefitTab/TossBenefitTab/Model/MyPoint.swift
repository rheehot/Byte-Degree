//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by TAEJANIM on 2022/08/14.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}
