//
//  ViewController.swift
//  tinderClone
//
//  Created by Erhan Acisu on 25.11.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        
        
        let topStackView = anaGorunumUstStackView()
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 110).isActive = true
              
               let yesilView = UIView()
               yesilView.backgroundColor = .green
        
        
        let buttonlarStackView = anaGorunumAltStackView()
       
        
        
        
               let generalStackView = UIStackView(arrangedSubviews: [topStackView,yesilView,buttonlarStackView])
    
               generalStackView.axis = .vertical
               view.addSubview(generalStackView)
      

        generalStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor)
              
    }


}

