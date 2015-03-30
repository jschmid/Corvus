# Corvus

[![CI Status](http://img.shields.io/travis/jschmid/Corvus.svg?style=flat)](https://travis-ci.org/jschmid/Corvus)
[![Version](https://img.shields.io/cocoapods/v/Corvus.svg?style=flat)](http://cocoadocs.org/docsets/Corvus)
[![License](https://img.shields.io/cocoapods/l/Corvus.svg?style=flat)](http://cocoadocs.org/docsets/Corvus)
[![Platform](https://img.shields.io/cocoapods/p/Corvus.svg?style=flat)](http://cocoadocs.org/docsets/Corvus)

Log to [Sentry](https://getsentry.com/)/[Raven](https://github.com/getsentry/raven-objc) using [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack).

* Version 1.0 works with CocoaLumberjack version 1.9.2.
* Version 2.0 works with CocoaLumberjack version 2.0.0.

## Installation

Corvus is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "Corvus"

## Usage

### Make sure Raven is configured

If you don't have it already, import Raven:

    #import "RavenClient.h"
    
Setup the client in `application:didFinishLaunchingWithOptions:`:

    RavenClient *client = [RavenClient clientWithDSN:SENTRY_DSN];
    [RavenClient setSharedClient:client];
    
It is important to set the shared client as Corvus uses it to log messages.
    
### Setup Corvus

Import the category:

	#import "Corvus.h"

Add the logger like the others (also in `application:didFinishLaunchingWithOptions:`):

    [DDLog addLogger:[Corvus sharedInstance]];

If you only want warnings and errors in Sentry, add a log level filter:

    [DDLog addLogger:[Corvus sharedInstance] withLevel:DDLogLevelWarning];
    
### Log something...

    DDLogError(@"Error while setting up Core Data");

...and you should see it in Sentry!

## Author

Jonas Schmid, jonas.schmid@gmail.com

## License

Corvus is available under the MIT license. See the LICENSE file for more info.
