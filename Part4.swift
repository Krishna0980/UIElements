//
//  Part4.swift
//  UIElements
//
//  Created by Krishna Bhatt on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Part4: UIViewController {
    
    private let myImageEnd:UIImageView = {
        let  imageview = UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "Image5.jpg")
        return imageview
    }()
    
    private let myLabel1:UILabel = {
        let Label = UILabel()
        Label.textColor = .white
        Label.font = UIFont.boldSystemFont(ofSize: 40)
        Label.text = "ThankYou!"
        Label.textAlignment = .center
        Label.backgroundColor = .black
        return Label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        view.addSubview(myLabel1)
        view.addSubview(myImageEnd)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        myImageEnd.frame = CGRect(x: 10, y: 200, width: 400, height: 350)
        myLabel1.frame = CGRect(x: 50, y: myImageEnd.bottom + 40, width: 300, height: 60)
        
    }

}
