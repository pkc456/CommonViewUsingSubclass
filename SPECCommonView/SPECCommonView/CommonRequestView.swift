//
//  CommonRequestView.swift
//  SPECCommonView
//
//  Created by pradeep.chaudhary on 9/5/17.
//  Copyright © 2017 pradeep.chaudhary. All rights reserved.
//

import UIKit

class CommonRequestView: UIView {
    @IBInspectable var Text: String {
        get {
            return labelRequest.text!
        }
        set {
            labelRequest.text = newValue
        }
    }
    
    @IBInspectable var ImageName: String {
        get {
            return ""
        }
        set {
            imageViewRequest.image = UIImage(named: newValue)
        }
    }
    
    
    
    @IBOutlet var view: UIView!
    @IBOutlet weak var imageViewRequest: UIImageView!
    @IBOutlet weak var labelRequest: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        Bundle.main.loadNibNamed("CommonRequestView", owner: self, options: nil)
        self.addSubview(view)
        view.frame = self.bounds
    }

}
