//
//  anaGorunumUstStackView.swift
//  tinderClone
//
//  Created by Erhan Acisu on 25.11.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class anaGorunumUstStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame : frame)
        let buttonlar = [#imageLiteral(resourceName: "settings"),#imageLiteral(resourceName: "logo"),#imageLiteral(resourceName: "chat")].map{ (goruntu) -> UIView in
            let button = UIButton(type: .system)
         
            button.setImage(goruntu.withRenderingMode(.alwaysOriginal) , for: .normal)
            return button
        }
        buttonlar.forEach{(b) in
            addArrangedSubview(b)
        }
    }
    
    
    
    required init(coder: NSCoder) {
        fatalError()
    }
}
