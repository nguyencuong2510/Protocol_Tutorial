//
//  All_Protocol.swift
//  Protocol_Tutorial
//
//  Created by cuongnv on 5/30/18.
//  Copyright © 2018 cuongnv. All rights reserved.
//

import Foundation

protocol ListSubcript {
    associatedtype AnyType
    var elements: [AnyType] { get }
}

extension ListSubcript {
    subscript(i: Int) -> Any {
        return elements[i]
    }
}

protocol ListPrintForWards {
    associatedtype AnyType
    var elements: [AnyType] { get }
}

extension ListPrintForWards {
    func showList() {
        if elements.count > 0 {
            var line = ""
            var index = 1
            
            for element in elements {
                line += "\(element) "
                index += 1
            }
            print("\(line)\n")
        } else {
            print("EMPTY\n")
        }
    }
}

protocol ListPrintBackWards {
    associatedtype AnyType
    var elements: [AnyType] { get }
}

extension ListPrintBackWards {
    func showList() {
        if elements.count > 0 {
            var line = ""
            var index = 1
            
            for element in elements.reversed() {
                line += "\(element) "
                index += 1
            }
            print("\(line)\n")
        } else {
            print("EMPTY\n")
        }
    }
}

protocol ListCout {
    associatedtype AnyType
    var elements: [AnyType] { get }
}

extension ListCout {
    func count() -> Int {
        return elements.count
    }
}

protocol List{
    associatedtype AnyType
    var elements: [AnyType] { get set }
    
    mutating func remove() -> AnyType
    
    mutating func add(_ element: AnyType)
}

extension List {
    mutating func add(_ element: AnyType) {
        elements.append(element)
    }
}

