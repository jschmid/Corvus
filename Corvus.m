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
  NSString *logMsg = logMessage->logMsg;

  if (formatter) {
    logMsg = [formatter formatLogMessage:logMessage];
  }

  if (logMsg) {

    RavenLogLevel ravenLevel = kRavenLogLevelDebug;
    switch (logMessage->logLevel) {
    case LOG_FLAG_ERROR:
      ravenLevel = kRavenLogLevelDebugError;
      break;

    case LOG_FLAG_WARN:
      ravenLevel = kRavenLogLevelDebugWarning;
      break;

    case LOG_FLAG_INFO:
      ravenLevel = kRavenLogLevelDebugInfo;
      break;

    case LOG_FLAG_DEBUG:
      ravenLevel = kRavenLogLevelDebug;
      break;

    case LOG_FLAG_VERBOSE:
      ravenLevel = kRavenLogLevelDebug;
      break;

    default:
      break;
    }

    [[RavenClient sharedClient] captureMessage:logMsg
                                         level:ravenLevel
                                        method:logMessage->function
                                          file:logMessage->file
                                          line:logMessage->lineNumber];
  }
}

@end
