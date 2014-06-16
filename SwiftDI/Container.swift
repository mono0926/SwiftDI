//
//  Container.swift
//  SwiftDI
//
//  Created by mono on 6/16/14.
//  Copyright (c) 2014 mono. All rights reserved.
//

import Foundation

protocol IContainer {
    func register<T>(() -> T)
    func resolve<T>() -> T?
}

class Container: IContainer {
    func register<T>(_: () -> T) {
        
    }
    func resolve<T>() -> T? {
        return nil
    }
}