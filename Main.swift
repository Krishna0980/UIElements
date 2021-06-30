//
//  Main.swift
//  UIElements
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Main: UIViewController {
    
    private let myLabel:UILabel = {
        let Label = UILabel()
        Label.textColor = .black
        Label.font = UIFont.boldSystemFont(ofSize: 43)
        Label.text = "THE PET SHOP"
        Label.textAlignment = .center
        Label.lineBreakMode = .byWordWrapping
        return Label
        
    }()

    private let WelcomeImage:UIImageView = {
       let WelcomeImage = UIImageView()
        WelcomeImage.contentMode = .scaleAspectFill
        WelcomeImage.image = UIImage(named: "Image1 2.jpg")
        return WelcomeImage
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Click To Sign Up With Us", for: .normal)
        button.addTarget(self, action: #selector(Redirect), for: .touchUpInside)
        button.layer.cornerRadius = 22
        button.backgroundColor = .systemPink
        return button
    }()
    
    @objc func Redirect()
    {
        let  vc = Part1()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        view.addSubview(myLabel)
        view.addSubview(WelcomeImage)
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 50, y: 130, width: 301, height: 40)
        WelcomeImage.frame = CGRect(x: 10, y: 350, width: 400, height: 90)
        myButton.frame = CGRect(x: 50, y: 700, width: 300, height: 60)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
