//
//  ChildViewController.swift
//  TryHandleDismiss
//
//  Created by Ihor Vasylkov on 14.03.2023.
//

import UIKit

class ChildViewController: UIViewController {

    @IBAction func close(_ sender: Any) {
        //TODO: I would not like to enforce convention in such cases use         self.presentingViewController?.dismiss(animated: true) instead.
        self.dismiss(animated: true)
    }
}
