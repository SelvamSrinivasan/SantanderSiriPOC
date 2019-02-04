//
//  IntentHandler.swift
//  BankDetails
//
//  Created by Selvam on 2/4/19.
//  Copyright © 2019 Selvam Srinivasan. All rights reserved.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any? {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        if intent is BankInfoIntent {
            print("In Request is Requested")
            return BankInfoIntentHandler()
        }
        return .none
    }
    
}
