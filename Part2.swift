//
//  Part2.swift
//  UIElements
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Part2: UIViewController {
    
    private let myLabel1:UILabel = {
        let Label = UILabel()
        Label.textColor = .black
        Label.font = UIFont.boldSystemFont(ofSize: 30)
        Label.text = "KNOW MORE ABOUT US"
        Label.textAlignment = .center
        Label.lineBreakMode = .byWordWrapping
        Label.backgroundColor = .systemTeal
        return Label
    }()
    
    
    private let myProgressView:UIProgressView = {
        let progressView = UIProgressView()
        progressView.setProgress(0.0, animated: true)
        return progressView
        
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        UIView.animate(withDuration: 10.0){
            self.myProgressView.setProgress(1.0, animated: true)
            
        }
        
        
    }
    
    private let myPickerView:UIPickerView = {
        let picker = UIPickerView()
        picker.backgroundColor = .yellow
        return picker
    
    }()
    private let pickerData = ["Dog","Cat","Rabbit","Parrot"]
    
    private let myLabelSlider:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Tell us how much you love animals"
        label.backgroundColor = .black
        return label
    }()
    private let mySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handleSlider), for: .valueChanged)
        return slider
    }()
    
    private let myLabelStepper:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Rate our new intiative of saving animals"
        label.backgroundColor = .black
        return label
    }()

    private let myStepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()
    
    private let MyImage:UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "Image5.jpg")
        return image
    }()
    
    private let myLabelSwitch:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Get Notified for new updates"
        label.backgroundColor = .black
        return label
    }()

    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
        switcher.addTarget(self, action: #selector(handleSwitch), for: .valueChanged)
        return switcher
        
    }()
    private let mybutton:UIButton = {
        
        let button = UIButton()
        button.setTitle("Continue", for: .normal)
        button.addTarget(self, action: #selector(handlebutton), for: .touchUpInside)
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 22
        return button
    
    }()
    @objc private func handlebutton() {
        let vc = Part3()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        present(nav, animated: false)
    }
    
    @objc func handleSlider() {
        
        print(mySlider.value)
    }
    @objc func handleStepper() {
        
        print(myStepper.value)
        
    }
    @objc func handleSwitch() {
        
        print(mySwitch.isOn)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        title = "Part 2"
        view.addSubview(myLabel1)
        view.addSubview(myProgressView)
        view.addSubview(myPickerView)
        view.addSubview(myLabelSlider)
        view.addSubview(mySlider)
        view.addSubview(mySwitch)
        view.addSubview(myLabelSwitch)
        view.addSubview(myLabelStepper)
        view.addSubview(myStepper)
        view.addSubview(MyImage)
        view.addSubview(mybutton)
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel1.frame = CGRect(x:20, y:100, width: view.width - 40, height: 40)
        myPickerView.frame = CGRect(x:20, y: myLabel1.bottom + 20, width: view.width - 40, height: 40)
        myLabelSlider.frame = CGRect(x: 20, y: myPickerView.bottom + 20, width: view.width - 40, height: 40)
        mySlider.frame = CGRect(x: 20, y: myLabelSlider.bottom + 10, width: view.width - 40, height: 40)
      myLabelStepper.frame = CGRect(x: 20, y: mySlider.bottom + 20, width: view.width - 40, height: 40)
      myStepper.frame = CGRect(x: 20, y: myLabelStepper.bottom + 10, width: view.width - 40, height: 40)
      myLabelSwitch.frame = CGRect(x: 20, y: myStepper.bottom + 40, width: view.width - 40, height: 40)
      mySwitch.frame = CGRect(x: 20, y: myLabelSwitch.bottom + 10, width: view.width - 40, height: 40)
        myProgressView.frame = CGRect(x: 20, y: mySwitch.bottom + 40, width: view.width - 40, height: 40)
        mybutton.frame = CGRect(x: 20, y: myProgressView.bottom - 25, width: view.width - 40, height: 50)
    }
    
}

extension Part2: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
      return 1
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return pickerData.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
    }
    
}
