//
//  ViewController.swift
//  Protocol_Tutorial
//
//  Created by cuongnv on 5/30/18.
//  Copyright © 2018 cuongnv. All rights reserved.
//

import UIKit

protocol FiFo: List, ListCout, ListPrintForWards, ListSubcript {
    
}

extension FiFo {
    mutating func remove() -> AnyType {
        if elements.count > 0 {
            return elements.removeFirst()
        }else {
            return "**** Empty ****" as! AnyType
        }
    }
}

struct Queue<AnyType>: FiFo {
    var elements: [AnyType] = []
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var queue = Queue<Any>()
        queue.add("cuong")
        queue.showList()
        queue.add(1)
        queue.showList()
        queue.add(3.0)
        _ = queue[0]
        _ = queue.count()
        queue.showList()
        queue.remove()
        queue.showList()
    }
}

