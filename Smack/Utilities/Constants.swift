//
//  Constants.swift
//  Smack
//
//  Created by Sandra on 3/21/18.
//  Copyright © 2018 Sandra. All rights reserved.
//

import Foundation

typealias CompletionHandler =  (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://chattychatchatsm.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

//Headers
let HEADER = [
    "Content-Type" : "Application/json; charset=utf-8"
]
// Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"


// User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
