//
//  BankInfoIntentHandler.swift
//  BankDetails
//
//  Created by Selvam on 2/4/19.
//  Copyright © 2019 Selvam Srinivasan. All rights reserved.
//

import Foundation

class BankInfoIntentHandler: NSObject, BankInfoIntentHandling {
    func handle(intent: BankInfoIntent, completion: @escaping (BankInfoIntentResponse) -> Void) {
        let response  = BankInfoIntentResponse(
            code: .success,
            userActivity: .none)
        completion(response)
    }
    
    
}
