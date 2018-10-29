//
//  BounceButton.swift
//  SchoolAid
//
//  Created by Contreras Tenorio Javier on 3/14/18.
//  Copyright © 2018 Contreras Tenorio Javier. All rights reserved.
//

import UIKit

class BounceButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        
        UIView.animate(withDuration: 1.5, delay: 0 , usingSpringWithDamping: 0.4, initialSpringVelocity: 4, options: .allowUserInteraction, animations:
            {self.transform = CGAffineTransform.identity
        }, completion: nil)
        
        super.touchesBegan(touches, with: event)
    }

}
