//
//  ButtonBenefitViewModel.swift
//  TossBenefitTab
//
//  Created by TAEJANIM on 2022/08/14.
//

import Foundation

final class ButtonBenefitViewModel {
    @Published var benefit: Benefit = .today
    @Published var benefitDetails: BenefitDetails?
    
    init(benefit: Benefit) {
        self.benefit = benefit
    }
    
    func fetchDetails() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.benefitDetails = .default
        }
    }
}
