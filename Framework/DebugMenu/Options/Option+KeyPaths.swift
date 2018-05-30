//
//  Option+KeyPaths.swift
//  DebugMenu
//
//  Created by Andrey Volodin on 30.05.2018.
//

public extension FloatOption {
    static func `for`<T>(object: T, keyPath: ReferenceWritableKeyPath<T, Float>, named name: String, min: Float, max: Float) -> FloatOption {
        let option = FloatOption(name: name,
                                 initialValue: object[keyPath: keyPath],
                                 min: min, max: max) {
            object[keyPath: keyPath] = $0
        }
        
        return option
    }
}

public extension BoolOption {
    static func `for`<T>(object: T, keyPath: ReferenceWritableKeyPath<T, Bool>, named name: String) -> BoolOption {
        let option = BoolOption(name: name,
                                 initialValue: object[keyPath: keyPath]) {
            object[keyPath: keyPath] = $0
        }
        
        return option
    }
}
