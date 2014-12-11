# Corvus

[![CI Status](http://img.shields.io/travis/jschmid/Corvus.svg?style=flat)](https://travis-ci.org/jschmid/Corvus)
[![Version](https://img.shields.io/cocoapods/v/Corvus.svg?style=flat)](http://cocoadocs.org/docsets/Corvus)
[![License](https://img.shields.io/cocoapods/l/Corvus.svg?style=flat)](http://cocoadocs.org/docsets/Corvus)
[![Platform](https://img.shields.io/cocoapods/p/Corvus.svg?style=flat)](http://cocoadocs.org/docsets/Corvus)

Log to [Sentry](https://getsentry.com/)/[Raven](https://github.com/getsentry/raven-objc) using [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack).

Version 1.0 works with CocoaLumberjack version 1.9.2.

## Installation

Corvus is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "Corvus"

## Usage

Import the category:

	#import "Corvus.h"

Add the logger like the others:

    [DDLog addLogger:[Corvus sharedInstance]];

If you only want warnings and errors in Sentry, add a log level filter:

    [DDLog addLogger:[Corvus sharedInstance] withLogLevel:LOG_LEVEL_WARN];

## Author

Jonas Schmid, jonas.schmid@gmail.com

## License

Corvus is available under the MIT license. See the LICENSE file for more info.
