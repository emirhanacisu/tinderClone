//
//  anaGorunumUstStackView.swift
//  tinderClone
//
//  Created by Erhan Acisu on 25.11.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class anaGorunumUstStackView: UIStackView {

    
    let imgAlev = UIImageView(image: #imageLiteral(resourceName: "logo"))
    let btnMesaj = UIButton(type: .system)
    let btnAyarlar = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame : frame)
      
        imgAlev.contentMode = .scaleAspectFit
        btnMesaj.setImage( #imageLiteral(resourceName: "chat").withRenderingMode(.alwaysOriginal), for: .normal)
        btnAyarlar.setImage( #imageLiteral(resourceName: "settings").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [btnAyarlar,UIView(),imgAlev,UIView(),btnMesaj].forEach{(b) in
            addArrangedSubview(b)
        }
        distribution = .equalCentering
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        layoutMargins = .init(top: 0, left: 18, bottom: 0, right: 18)
    }
    
    
    
    required init(coder: NSCoder) {
        fatalError()
    }
}
