//
//  anaGorunumAltStackView.swift
//  tinderClone
//
//  Created by Erhan Acisu on 25.11.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class anaGorunumAltStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame : frame)
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
       
        let altSubView = [#imageLiteral(resourceName: "reflesh"),#imageLiteral(resourceName: "dislike"),#imageLiteral(resourceName: "superLike"),#imageLiteral(resourceName: "like"),#imageLiteral(resourceName: "boost")].map {(goruntu) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(goruntu.withRenderingMode(.alwaysOriginal) , for: .normal)
            return button
        }
        
        altSubView.forEach{(v) in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init kodur eklenmedi")
    }
}
