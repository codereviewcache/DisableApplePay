//
//  PassKitHelper.swift
//  DisableApplePay
//
//  Created by Ashar, Snehanshu on 1/30/18.
//  Copyright © 2018 Ashar, Snehanshu. All rights reserved.
//

import Foundation
import PassKit

@objc public class PassKitHelper:NSObject {
    private static var tokenPKSuppresion:PKSuppressionRequestToken!;
    
    public static func suppressApplePay() {
        if #available(iOS 9, *) {
            if( PKPassLibrary.isPassLibraryAvailable() && !PKPassLibrary.isSuppressingAutomaticPassPresentation()) {
                tokenPKSuppresion = PKPassLibrary.requestAutomaticPassPresentationSuppression(responseHandler: { (result) in
                    if result != .success {
                        print("Could not suppress Automatic Pass Presentation")
                    }
                    else {
                        print("Automatic Pass Presentation suppressed")
                    }
                })
            }
        }
    }
    
    public static func enableApplePay() {
        if #available(iOS 9, *) {
            if( PKPassLibrary.isPassLibraryAvailable() && PKPassLibrary.isSuppressingAutomaticPassPresentation()) {
                PKPassLibrary.endAutomaticPassPresentationSuppression(withRequestToken: tokenPKSuppresion)
                print("Automatic Pass Presentation enabled")
            }
        }
    }
}
