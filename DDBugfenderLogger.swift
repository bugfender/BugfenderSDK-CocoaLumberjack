//
//  DDBugfenderLogger.swift
//
//  Created by David Lam on 26/1/17.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import Bugfender
import CocoaLumberjack

class DDBugfenderLogger: DDAbstractLogger {
    fileprivate static let _instance = DDBugfenderLogger()
    
    public static var shared: DDBugfenderLogger {
        return _instance
    }
    
    fileprivate override init() {
        
    }
    
    override func log(message logMessage: DDLogMessage!) {
        guard let logMessage = logMessage else {
            return
        }
        
        let ivar = class_getInstanceVariable(object_getClass(self), "_logFormatter")
        
        var message : String!
        if let formatter = object_getIvar(self, ivar) as? DDLogFormatter {
            message = formatter.format(message: logMessage)
        } else {
            message = logMessage.message
        }

        var logLevel: BFLogLevel!
        switch logMessage.flag {
        case DDLogFlag.error:
            logLevel = BFLogLevel.error
        case DDLogFlag.warning:
            logLevel = BFLogLevel.warning
        default:
            logLevel = BFLogLevel.default
        }
        
        let tagName = String(logMessage.context)
        
        Bugfender.log(withLineNumber: Int(logMessage.line),
                      method: logMessage.function,
                      file: logMessage.fileName,
                      level: logLevel,
                      tag: tagName,
                      message: message)
    }
    
    override var loggerName: String! {
        return "com.bugfender.cocoalumberjack"
    }
    
}
