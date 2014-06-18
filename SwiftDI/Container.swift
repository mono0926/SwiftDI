//
//  Container.swift
//  SwiftDI
//
//  Created by mono on 6/16/14.
//  Copyright (c) 2014 mono. All rights reserved.
//

import Foundation



protocol IContainer {
    func register(resolver: IResolver)
    func resolve<T>() -> T?
}

class Container: IContainer {
    // TODO: later
    var classMapping = Dictionary<String, IResolver>()
    func register(resolver: IResolver) {
        classMapping["a"] = resolver
    }
    func resolve<T>() -> T? {
//        let resolver = classMapping["a"] as Resolver<T>?
//        let result = resolver?.resolve()
//        return result
        return nil
    }
}

protocol IResolver {
    typealias ItemType
    let resolveMethod: () -> ItemType
    func resolve() -> ItemType
}

class Resolver<T> : IResolver {
    var resolved: T
    let resolveMethod: () -> T
    init(resolveMethod:() -> T) {
        self.resolveMethod = resolveMethod;
    }
    func resolve() -> T {
        self.resolved = self.resolveMethod()
        return self.resolved;
    }
}