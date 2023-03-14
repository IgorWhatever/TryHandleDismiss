//
//  ChildViewController.swift
//  TryHandleDismiss
//
//  Created by Ihor Vasylkov on 14.03.2023.
//

import UIKit

class ChildViewController: UIViewController {

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
