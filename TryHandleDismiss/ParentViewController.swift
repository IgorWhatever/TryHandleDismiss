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

    let childViewController: UIViewController = {

        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ChildViewController")
        
        return viewController
    }()
    
    @IBAction func show(_ sender: Any) {
        self.present(childViewController, animated: true)
    }
    
    func onPresent(){
        player.pause()
    }
    
    func onDismiss(){
        player.resume()
    }
    
    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        super.present(viewControllerToPresent, animated: flag, completion: completion)
        
        onPresent()
    }
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: flag, completion: completion)
        
        onDismiss()
    }
}

