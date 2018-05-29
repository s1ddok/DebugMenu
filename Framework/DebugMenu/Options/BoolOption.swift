//
//  BoolOption.swift
//  DebugMenu
//
//  Created by Andrey Volodin on 24.05.2018.
//

public class BoolOption: Option {
    public var name: String
    public internal(set) var value: Bool {
        didSet {
            self.onChangeHandler?(self.value)
        }
    }
    public var onChangeHandler: ((Bool) -> Void)?
    
    public init(name: String, initialValue: Bool, onChangeHandler: @escaping (Bool) -> Void) {
        self.name = name
        self.value = initialValue
        self.onChangeHandler = onChangeHandler
    }
}
