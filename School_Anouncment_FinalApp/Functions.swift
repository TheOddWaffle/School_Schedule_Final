//
//  Functions.swift
//  School_Anouncment_FinalApp
//
//  Created by Kenny on 7/13/15.
//  Copyright © 2015 Siddhartha Arya. All rights reserved.
//

import Foundation

func save(obj: AnyObject, key: String) {
    let defaults = NSUserDefaults.standardUserDefaults()
    let dataToSave = NSKeyedArchiver.archivedDataWithRootObject(obj)
    defaults.setObject(dataToSave, forKey: key)
}

func load(key: String) ->AnyObject {
    let defaults = NSUserDefaults.standardUserDefaults()
    return defaults.objectForKey(key)!
}