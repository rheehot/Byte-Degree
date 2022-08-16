//
//  HomeViewController.swift
//  CarrotHomeTab
//
//  Created by TAEJANIM on 2022/08/15.
//

import UIKit
import Combine

// - [✅] 홈 뷰모델 만들기 (리스트 가져오고, 아이템 탭했을 때의 행동 정의하기)
// - [✅] 뷰모델은 리스트 가져오기

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let viewModel: HomeViewModel = HomeViewModel(network: NetworkService(configuration: .default))
    var subcriptions = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        bind()
        viewModel.fetch()
    }
    
    private func configureCollectionView() {
        
    }
    
    private func bind() {
        viewModel.$items
            .receive(on: RunLoop.main)
            .sink { items in
                print("--> update collection view \(items)")
            }.store(in: &subcriptions)
        
        viewModel.itemTapped
            .sink { item in
                let sb = UIStoryboard(name: "Detail", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }.store(in: &subcriptions)
    }
}
