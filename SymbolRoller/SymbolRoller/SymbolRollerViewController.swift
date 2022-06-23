//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by TAEJANIM on 2022/06/23.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TO-DO :
        // - 심볼에서, 하나를 임의로 추출해서,
        // - 이미지와 텍스트를 설정한다
        // DRY
        // Do not Repeat Yourself : 중복된 코드를 보면 참지 말아라
        
        reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
}
