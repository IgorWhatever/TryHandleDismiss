//
//  ParentViewController.swift
//  TryHandleDismiss
//
//  Created by Ihor Vasylkov on 14.03.2023.
//

import UIKit

struct Player {
    func pause(){
        print("paused")
    }
    
    func resume() {
        print("resumed")
    }
}

class ParentViewController: UIViewController {

    private let player = Player()

}

