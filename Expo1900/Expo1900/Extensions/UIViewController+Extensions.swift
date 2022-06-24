//
//  UIViewController+Extensions.swift
//  Expo1900
//
//  Created by Derrick kim on 2022/06/18.
//

import UIKit

extension UIViewController {
    func activateOnlyPortraitOrientation(_ isActivated: Bool) {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        delegate.isActivatedOnlyPortrait = isActivated
    }
    
    func showConfirmAlert(title: String, message: String, alertAction: UIAlertAction) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
}
