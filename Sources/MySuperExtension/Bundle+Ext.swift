//
//  Bundle+Ext.swift
//  MySuperExtension
//
//  Created by David Li on 2026/1/14.
//

import UIKit

public extension Bundle {
    /// 版本号
    /// returns the value accessed with the key `CFBundleShortVersionString`.
    var versionNumber: String {
        guard let infoDictionary = Bundle.main.infoDictionary else { return "nil" }
        guard let versionNumber = infoDictionary["CFBundleShortVersionString"] as? String else { return "nil" }
        return versionNumber
    }
    
    var buildString: String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? ""
    }
    
    /// Retrieves the `infoDictionary` dictionary inside Bundle, and retrieves
    /// all the values inside it
    var getInfoDictionary: [String: Any] {
        guard let infoDictionary = Bundle.main.infoDictionary else { return [:] }
        return infoDictionary
    }
}
