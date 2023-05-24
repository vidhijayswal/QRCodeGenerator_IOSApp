//
//  ViewController.swift
//  QRCodeGenerator
//
//  Created by vidhi jayswal on 21/06/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var imageViewQR: UIImageView!
    
    @IBOutlet weak var TextField: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
    }

    @IBAction func ButtonGen(_ sender: UIButton)
    {
        
        if let myString = TextField.text
        {
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
            
            let img = UIImage(ciImage: (filter?.outputImage)!)
            
            imageViewQR.image = img
            
            
            
        }
    }
    
}

