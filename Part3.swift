//
//  Part3.swift
//  UIElements
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Part3: UIViewController {
    
    
    private let toolBar:UIToolbar = {
        let  toolBar = UIToolbar()
        let cancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: #selector(handleSpace))
        let gallery  = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(handleGallery))
        toolBar.items = [cancel, spacer, gallery]
        return toolBar
        
        
        
    }()
    
    
    private let myImageView:UIImageView = {
        let  imageview = UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "Image6.jpg")
        return imageview
        
        
    }()
    
   
    
    private let Mybutton:UIButton = {
        let button = UIButton()
        button.setTitle("Set Image", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(Redirect), for: .touchUpInside)
        button.layer.cornerRadius = 22
        return button
        
    }()
    
    @objc func Redirect()
    {
        let  vc = Part4()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc private func handleCancel() {
        print("cancel called")
        self.dismiss(animated: true)
        
    }
    
    @objc private func handleGallery() {
        print("camera called")
        imagePicker.sourceType = .photoLibrary
        DispatchQueue.main.async {
            self.present(self.imagePicker, animated: true)
            
        }
        
    }
    
    @objc func handleSpace(){
        print("Space")
    }
    
    private let tabBar:UITabBar = {
        let  tabBar = UITabBar()
        let  history = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let downloads = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabBar.items = [history, downloads]
        return tabBar
        
    }()
    
    private let imagePicker:UIImagePickerController = {
       let imagePicker = UIImagePickerController()
       imagePicker.allowsEditing = false
        return imagePicker
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        title = "Part 3"
        
        view.addSubview(toolBar)
        view.addSubview(tabBar)
        view.addSubview(Mybutton)
        tabBar.delegate = self
        imagePicker.delegate = self
        view.addSubview(myImageView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let toolBarHeight:CGFloat = view.safeAreaInsets.top + 40
        toolBar.frame = CGRect(x: 0, y: 0, width: view.width, height: toolBarHeight)
        
        myImageView.frame = CGRect(x:20, y: toolBar.bottom + 70, width: view.width-40, height: 200)
       
        Mybutton.frame = CGRect(x: 20, y: myImageView.bottom + 40, width: view.width-40, height: 50)
        let tabBarHeight:CGFloat = view.safeAreaInsets.bottom + 40
        toolBar.frame = CGRect(x: 0, y: view.height - tabBarHeight, width: view.width, height: tabBarHeight)
    }
}

extension Part3: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
    }
}

extension Part3:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func  imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectImage = info[.originalImage] as? UIImage {
            myImageView.image = selectImage
        }
        picker.dismiss(animated: true)
        
    }
    
    func  imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    
    }
}

    

