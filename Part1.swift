//
//  Part1.swift
//  UIElements
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Part1: UIViewController {
    
    private let myLabel1:UILabel = {
        let Label = UILabel()
        Label.textColor = .black
        Label.font = UIFont.boldSystemFont(ofSize: 50)
        Label.text = "SIGN UP"
        Label.textAlignment = .center
        Label.backgroundColor = .systemTeal
        return Label
    }()
    private let myLabel2:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = " Enter FullName"
        label.textAlignment = .center
        label.backgroundColor = .black
        return label
    }()
    
    private let myTextField:UITextField = {
        let textfield = UITextField()
        textfield.textAlignment = .center
        textfield.borderStyle = .roundedRect
        textfield.backgroundColor = .white
        return textfield
    }()
    private let myLabelPass:UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = " Enter Password"
        label.textAlignment = .center
        label.backgroundColor = .black
        return label
    }()
    
    private let myTextFieldPass:UITextField = {
        let textfieldpass = UITextField()
        textfieldpass.textAlignment = .center
        textfieldpass.borderStyle = .roundedRect
        textfieldpass.backgroundColor = .white
        return textfieldpass
    }()
    private let myTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Enter your Address"
        textView.textAlignment = .center
        textView.backgroundColor = .white
        return textView
    }()

    
    private let myLabel3:UILabel = {
        let Label = UILabel()
        Label.textColor = .white
        Label.text = "Date of Birth"
        Label.textAlignment = .center
        Label.backgroundColor = .black
        return Label
    }()
    private let myDatePicker:UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime
        datePicker.timeZone = TimeZone(secondsFromGMT: 0)
        datePicker.addTarget(self, action: #selector(handleDateChange), for: .valueChanged)
        return datePicker
    }()
    
    

    private let mySegmentedControl:UISegmentedControl = {
        let segControl = UISegmentedControl()
        segControl.insertSegment(withTitle: "Male", at: 0, animated: true)
        segControl.insertSegment(withTitle: "Female", at: 1, animated: true)
        segControl.insertSegment(withTitle: "Others", at: 2, animated: true)
        segControl.selectedSegmentIndex = 0
        segControl.addTarget(self, action: #selector(handleSegmentedControl), for: .valueChanged)
        return segControl
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Continue", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 22
        return button
    }()
    
    
    private let myPageControl:UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.backgroundColor = .systemTeal
        pageControl.addTarget(self, action: #selector(handlePageChange), for: .valueChanged)
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        view.addSubview(myLabel1)
        view.addSubview(myLabel2)
        view.addSubview(myLabelPass)
        view.addSubview(myTextFieldPass)
        view.addSubview(myTextField)
        view.addSubview(myTextView)
        view.addSubview(myLabel3)
        view.addSubview(myDatePicker)
        view.addSubview(mySegmentedControl)
        view.addSubview(myButton)
        view.addSubview(myPageControl)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel1.frame = CGRect(x: 30, y: 100, width: view.width - 40, height: 40)
        myLabel2.frame = CGRect(x: 20, y: myLabel1.bottom + 30, width: view.width - 40, height: 40)
        myTextField.frame = CGRect(x: 20, y: myLabel2.bottom + 30, width: view.width - 40, height: 40)
        myLabelPass.frame = CGRect(x: 20, y: myTextField.bottom + 30, width: view.width - 40, height: 40)
        myTextFieldPass.frame = CGRect(x: 20, y: myLabelPass.bottom + 30, width: view.width - 40, height: 40)
        myTextView.frame = CGRect(x: 20, y: myTextFieldPass.bottom + 30, width: view.width - 40, height: 70)
        
        
        myLabel3.frame = CGRect(x: 20, y: myTextView.bottom + 30, width: view.frame.width - 40, height: 40)
        myDatePicker.frame = CGRect(x: 20, y: myLabel3.bottom + 30, width: view.width - 40, height: 40)
        
        mySegmentedControl.frame = CGRect(x: 20, y: myDatePicker.bottom + 30, width: view.width - 40, height: 40)
        
        myButton.frame = CGRect(x: 20, y: mySegmentedControl.bottom + 30, width: view.width - 40, height: 50)
        myPageControl.frame = CGRect(x: 20, y: view.height - 80, width: view.width - 40, height: 20)
    }
        
        @objc func handleButtonClick() {
            print("Clicked!")
            
            let vc =  Part2()
            
            navigationController?.pushViewController(vc, animated: true)
            
        }
        @objc func handleDateChange() {
            
            print(myDatePicker.date)
        }
    
        @objc func handleSegmentedControl() {
            
            print(mySegmentedControl.selectedSegmentIndex)
        }
    @objc func handlePageChange() {
        print(myPageControl.currentPage)
        
    }
       
}
