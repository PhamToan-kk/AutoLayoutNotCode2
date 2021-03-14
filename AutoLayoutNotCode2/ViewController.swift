//
//  ViewController.swift
//  AutoLayoutNotCode2
//
//  Created by Pham Toan on 13/03/2021.
//

import UIKit

class ViewController: UIViewController {
    var mainStackView : UIStackView = UIStackView()
    var stackView1 : UIStackView = UIStackView()
    var stackLabelView1 : UIStackView = UIStackView()
    var stackInputView1 : UIStackView = UIStackView()

    var label1 : UILabel?
    var label2 :UILabel?
    var label3 :UILabel?
    
    var input : UITextField?
    var input1: UITextField?
    var input2 : UITextField?
    
    
    let textView = UITextView()
    var stackView2 : UIStackView = UIStackView();
    let imageView = UIImageView()
    
    let btnCancel = UIButton()
    let btnSave = UIButton()
    let btnClear = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.autolayoutMainStackView()
        self.autolayoutSTackView1()
        self.autolayoutTextView()
        self.autolayoutStackView2()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        mainStackView.changeBackGroundColor(color: UIColor.green)
//        stackView1.changeBackGroundColor(color: UIColor.orange)
//        stackView2.changeBackGroundColor(color: UIColor.blue
//        )
    }
    
    private func autolayoutMainStackView(){
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        
//      mainStackView.backgroundColor = UIColor.red
        mainStackView.axis = .vertical;
        mainStackView.alignment = .fill;
        mainStackView.distribution = .fill;
        mainStackView.spacing = 10 ;
        
    }
    private func autolayoutSTackView1(){
        mainStackView.addArrangedSubview(stackView1)
        stackView1.translatesAutoresizingMaskIntoConstraints = false;
        stackView1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        stackView1.axis = .horizontal;
        stackView1.alignment = .fill ;
        stackView1.spacing = 10
        stackView1.distribution = .fill
        
         
        //autolayout for image
        imageView.translatesAutoresizingMaskIntoConstraints = false;
        imageView.image = UIImage(named:"a.png")
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1).isActive = true // muntipler là tỉ lệ ex : 1:1
        imageView.center = self.view.center
                
                    
                // Make Image Corners Rounded
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = 10
        stackView1.addArrangedSubview(imageView)
        
        //autolayout stacklabelView1
        stackLabelView1.translatesAutoresizingMaskIntoConstraints = false;
        stackView1.addArrangedSubview(stackLabelView1)
        stackLabelView1.axis = .vertical
        stackLabelView1.alignment = .leading
        stackLabelView1.spacing = 10
        stackLabelView1.distribution = .fillEqually
        stackLabelView1.widthAnchor.constraint(equalToConstant: 80).isActive = true
        

          label1 = UILabel(text: "labelone", fontSize: 22, parentStackView: stackLabelView1)
        
         label2 = UILabel(text: "labeltwo", fontSize: 22, parentStackView: stackLabelView1)

          label3 = UILabel(text: "labelthree", fontSize: 22, parentStackView: stackLabelView1)

        
        //autolayout stackInputView1
        
        stackInputView1.translatesAutoresizingMaskIntoConstraints = false;
        stackView1.addArrangedSubview(stackInputView1)
        stackInputView1.axis = .vertical;
        stackInputView1.alignment = .fill;
        stackLabelView1.spacing = 5
        stackLabelView1.distribution = .equalSpacing
        
        
       input = UITextField(placeholder: "input1", parentStack: stackInputView1)
        
       input1 = UITextField(placeholder: "input2", parentStack: stackInputView1)
               
       input2  = UITextField(placeholder: "ipnut3", parentStack: stackInputView1)


        
    }
    private func autolayoutTextView(){
        mainStackView.addArrangedSubview(textView)
        textView.text = "jijijijijijijsfsdfsdfds"
        textView.font = textView.font?.withSize(25)
        textView.backgroundColor = .purple
//        textView.translatesAutoresizingMaskIntoConstraints = false
        
        textView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        textView.widthAnchor.constraint(equalToConstant: 300).isActive = true

    }
    
    private func autolayoutStackView2(){
        mainStackView.addArrangedSubview(stackView2)
        stackView2.translatesAutoresizingMaskIntoConstraints = false;
        stackView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let btnSave = UIButton(name: "Save", superStackView: stackView2)
        let btnClear = UIButton(name: "Clear", superStackView: stackView2)
        let btnOK = UIButton(name: "OK", superStackView: stackView2)

        
        stackView2.axis = .horizontal;
        stackView2.alignment = .center ;
        stackView2.distribution = .fillEqually
        stackView2.spacing = 10
    }


}

