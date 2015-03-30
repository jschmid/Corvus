//
//  Corvus.m
//
//  Created by Jonas Schmid on 04/04/14.
//  Copyright (c) 2014 schmid. All rights reserved.
//

#import "Corvus.h"

#import "RavenClient.h"

@implementation Corvus

static Corvus *sharedInstance;

+ (void)initialize {
  sharedInstance = [Corvus new];
}

+ (Corvus *)sharedInstance {
  return sharedInstance;
}

- (void)logMessage:(DDLogMessage *)logMessage {
  NSString *logMsg = logMessage->_message;

  if (_logFormatter) {
    logMsg = [_logFormatter formatLogMessage:logMessage];
  }

  if (logMsg) {

    RavenLogLevel ravenLevel = kRavenLogLevelDebug;
    switch (logMessage->_flag) {
    case DDLogFlagError:
      ravenLevel = kRavenLogLevelDebugError;
      break;

    case DDLogFlagWarning:
      ravenLevel = kRavenLogLevelDebugWarning;
      break;

    case DDLogFlagInfo:
      ravenLevel = kRavenLogLevelDebugInfo;
      break;

    case DDLogFlagDebug:
      ravenLevel = kRavenLogLevelDebug;
      break;

    case DDLogFlagVerbose:
      ravenLevel = kRavenLogLevelDebug;
      break;

    default:
      break;
    }

    [[RavenClient sharedClient] captureMessage:logMsg
                                         level:ravenLevel
                                        method:[logMessage->_function UTF8String]
                                          file:[logMessage->_fileName UTF8String]
                                          line:logMessage->_line];
  }
}

@end
