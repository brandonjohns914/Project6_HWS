//
//  ViewController.swift
//  Project6b
//
//  Created by Brandon Johns on 4/26/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
                                                                    // UILabel shows static text on screen
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false    // create layout by hand
        label1.backgroundColor = .red
        label1.text = "THESE"
        label1.sizeToFit()
        
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        
        //shows label on screen
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//
//        let views_dictionary = ["label1" : label1 ,"label2" : label2 , "label3" : label3 , "label4" : label4 , "label5" : label5]
//
//        for label in views_dictionary.keys
//        {
//            view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: views_dictionary))
//                                                                                                                // view is the main view
//                                                                                                                // addConstraints adds array of constraints to the view
//                                                                                                                // NSLayoutConstraint auto layout
//                                                                                                                // "H:|[\(label)]|" describes how the view should look
//                                                                                                                // label should go to the edge of the view
//                                                                                                                // H: horizontal layout ||= edge of view  [] == put layer of the view
//
//
//        }
//
//        let metrics = ["label_height": 88 ]
//        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(label_height@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: views_dictionary))
//                                                                                                                // V: vertical
//                                                                                                                // - = space must be used before and after the size
//                                                                                                                //(==88) size must be 88 points
//                                                                                                                // metrics = the size like hte 88 points
//                                                                                                                //@999 priority constraint

        
        var previous: UILabel?
        
        for label in [label1, label2, label3, label4, label5]
        {
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            if let previous = previous
            {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            }
            else
            {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
                                                                                                                // top of the safearea 
            }
            
            previous = label
        }
        
    }


}

