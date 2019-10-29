//
//  ViewController.swift
//  BlocksSwift
//
//  Created by Ильдар Залялов on 16/10/2019.
//  Copyright © 2019 Ildar Zalyalov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var updateUserBlock: (() -> String)!
    
    var secondBlock: ((String) -> Void)?
    var calculate: ((_ first: Int, _ second: Int) -> Int)?
    
    var bloks: [() -> String] = []
    
    var someInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        updateUserBlock = { [weak self] in
//
//            self.someMethod()
//
//            return " Hello"
//        }
//
//        secondBlock = { someVar in
//            print(someVar)
//        }
//
//        calculate = { first, second in
//            return first + second
//        }
//
////        sayHelloToUser(with: "Mark")
//
//        sayHelloToUser(with: "Mark", completion: {
//            print("Hello!")
//        })
//
//        sayHelloToUser(with: "Mark") {
//
//
//        }
//
//        var someInt = 0
//
//        for _ in 0 ..< 5 {
//            bloks.append({ someInt })
//
//            someInt += 1
//        }
//
//        for block in bloks {
//            print(block())
//        }
        
        
    }

    func someMethod() {
        
        let customCell = TableViewCell()
        
        customCell.didPressAction = {
            // transition to 2 controller
        }
    }
    
    func sayHelloToUser(with name: String, completion: () -> String) {
        
//        bloks.append(completion)
        
        print(completion())
    }
    
    
}

