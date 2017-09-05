//
//  CommonSeparatorView.swift
//  SPECCommonView
//
//  Created by pradeep.chaudhary on 9/5/17.
//  Copyright © 2017 pradeep.chaudhary. All rights reserved.
//

import UIKit

class CommonSeparatorView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet var viewSeparator: UIView!

    @IBInspectable var SeparatorColor: UIColor {
        get {
            return viewSeparator.backgroundColor!
        }
        set {
            viewSeparator.backgroundColor = newValue
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        Bundle.main.loadNibNamed("CommonSeparatorView", owner: self, options: nil)
        self.addSubview(view)
        view.frame = self.bounds
    }
}
