# Bugfender logger for CocoaLumberjack

This project provides a `DDLogger` implementation for using Bugfender in conjunction with [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack).

## Usage

### Swift
* Follow the Bugfender SDK installation instructions on the [Bugfender website](https://bugfender.com/)
* Copy `DDBugfenderLogger.swift` to your project
* Add the logger to CocoaLumberjack with:

```
DDLog.add(DDBugfenderLogger.shared)
```

### Objective-C
* Follow the Bugfender SDK installation instructions on the [Bugfender website](https://bugfender.com/)
* Copy `DDBugfenderLogger.h` and `DDBugfenderLogger.m` files from this repository to your project
* Add the logger to CocoaLumberjack with:

```
[DDLog addLogger:[DDBugfenderLogger sharedInstance]];
```

### Advanced configuration
If you want to send to Bugfender exclusively the logs processed with CocoaLumberjack, you may want to disable some of the automated loggers.

For more information, see [How do I specify the logs I want to send with Bugfender SDK?](http://support.bugfender.com/getting-started/how-do-i-specify-the-logs-i-want-to-send-with-bugfender-sdk)
