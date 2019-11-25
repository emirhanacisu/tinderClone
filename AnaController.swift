//
//  ViewController.swift
//  tinderClone
//
//  Created by Erhan Acisu on 25.11.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class AnaController: UIViewController {

     let topStackView = anaGorunumUstStackView()
    //MARK:- UST MENüDE Kİ BUTONLARI TUTAR
    let buttonlarStackView = anaGorunumAltStackView()
    let profilDiziniView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
      

               
       
        layoutDuzenle()
        profilGorunumuAyarla()

               
              
    }

//MARK:- LAYOUTDÜZENLEYEN FONKSİYON
    func layoutDuzenle(){
        let generalStackView = UIStackView(arrangedSubviews: [topStackView,profilDiziniView,buttonlarStackView])
        generalStackView.axis = .vertical
        view.addSubview(generalStackView)
          

        generalStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                                bottom:view.safeAreaLayoutGuide.bottomAnchor,
                                leading: view.leadingAnchor,
                                trailing: view.trailingAnchor)
        generalStackView.isLayoutMarginsRelativeArrangement = true
        generalStackView.layoutMargins = .init(top: 0, left: 10, bottom: 0, right: 10)
        generalStackView.bringSubviewToFront(profilDiziniView)
    }
    
    func profilGorunumuAyarla(){
        (0...10).forEach{(b) in
            let pView = ProfilView(frame: .zero)
                   profilDiziniView.addSubview(pView)
                   pView.doldurSuperView()
        }
       
    }
}

