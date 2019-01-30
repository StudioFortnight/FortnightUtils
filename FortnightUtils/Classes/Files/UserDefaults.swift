//
//  UserDefaults.swift
//  FortnightUtils
//
//  Created by Andrea Toso on 30/01/2019.
//

import Foundation

extension UserDefaults {
    
    fileprivate enum Flag: String {
        case launch = "hasBeenLaunchedBeforeFlag"
        var value: String {
            get { return String(describing: self) }
        }
    }
    
    /**
     Returns a boolean value specifying if the app has already been launched before.
     */
    static public var isAppFirstLaunch: Bool = {
        let key = Flag.launch.value
        return !UserDefaults.standard.bool(forKey: key)
    }()
    
    /**
     Set a boolean value which indicates if the app has already been launched before.
     */
    static public func setAppFirstLaunch() {
        let key = Flag.launch.value
        let isFirstLaunch = !UserDefaults.standard.bool(forKey: key)
        if (isFirstLaunch) {
            UserDefaults.standard.set(true, forKey: key)
            UserDefaults.standard.synchronize()
        }
    }
    
}
