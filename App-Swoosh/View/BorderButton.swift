//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by Ken Krippeler on 11.08.17.
//  Copyright © 2017 Lichtverbunden. All rights reserved.
//

import UIKit

class BorderButton: UIButton
{
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
