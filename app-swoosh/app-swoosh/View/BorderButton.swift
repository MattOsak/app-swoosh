//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Matt Osak on 2017-10-11.
//  Copyright © 2017 Matt Osak. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
