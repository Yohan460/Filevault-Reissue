//
//  Preferences.swift
//  Filevault Reissue
//
//  Created by Tyler Morgan on 2/28/20.
//  Copyright © 2020 Tyler Morgan. All rights reserved.
//

import Foundation

class Preferences {
    
    static let sharedInstance = Preferences()
    private let userDefaults: UserDefaults
    
    internal var viewTitle: String? {
        get {
            return self.userDefaults.string(forKey: "viewTitle")
        }
    }
    
    internal var viewInstructions: String? {
        get {
            return self.userDefaults.string(forKey: "viewInstructions")
        }
    }
    
    internal var viewLogoPath: String? {
        get {
            return self.userDefaults.string(forKey: "viewLogoPath")
        }
    }
    
    internal var infoURL: String? {
        get {
            return self.userDefaults.string(forKey: "infoURL")
        }
    }
    
    internal var supressRecoveryKey: Bool {
        get {
            return self.userDefaults.bool(forKey: "supressRecoveryKey")
        }
    }
    
    internal var usernamePlaceholder: String? {
        get {
            return self.userDefaults.string(forKey: "usernamePlaceholder")
        }
    }
    
    internal var passwordPlaceholder: String? {
        get {
            return self.userDefaults.string(forKey: "passwordPlaceholder")
        }
    }
    
    internal var moreInformationText: String? {
        get {
            return self.userDefaults.string(forKey: "moreInformationText")
        }
    }
    
    init(nsUserDefaults: UserDefaults = UserDefaults.standard) {
        self.userDefaults = nsUserDefaults
    }
    
    init(defaults: UserDefaults) {
        self.userDefaults = defaults
    }
}
