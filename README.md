# DebugMenu

In-App iOS Debugging Tool With Enhanced Logging, Networking Info, Crash reporting And More.

<img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS" />
<img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="License MIT" />

The debugger tool for iOS developer. Display *logs*, *network request*, *device informations*, *crash logs* while using the app. Easy accessible with **its bubble head button** 🔘. Easy to integrate in any apps, to handle development or testing apps **easier**. First version, there is plenty of room for improvement.

</br>
<p align="center">
  <img src ="https://cloud.githubusercontent.com/assets/3276768/22604003/dd161210-ea49-11e6-923d-b4b32acfd642.gif"/>
</p>

## Usage

In the `AppDelegate` instantiate `DebugMenu manager`.
Be careful to use DebugMenu for development purpose only.

```swift
   func application(_ application: UIApplication,
   didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        #if DEBUG
            DebugMenu.sharedManager.enable()
        #endif
        return true
   }
```

## Logs

DebugMenu overrides `print`, so you can use it and see your logs. otherwise, you can add level, and get more details (file, and line) about your logs. With the `Logger` class provided by the framework. Get new logs count on the badge, or *warning/error* notification on the bubble head.
<a href="http://promisesaplus.com/">
    <img src="https://cloud.githubusercontent.com/assets/3276768/22610650/ba71cf2a-ea66-11e6-8f94-6d3c9916740e.gif" align="right" />
</a>
```swift
print("logs")
Logger.verbose("some logs")
Logger.info("infos")
Logger.warning("warning ! ⚠️")
Logger.error("error ❌")
```

## Network

DebugMenu uses `URLProcotol` to log the request. You can add the logger on a custom URLSessionConfiguration. It works with both **Alamofire** and `URLSession.shared`. You can disable the networking logging in the settings screen. You will get notified by a 🚀, when a request is launched.

<a href="http://promisesaplus.com/">
    <img src="https://cloud.githubusercontent.com/assets/3276768/22646311/02988ba2-ec6c-11e6-8870-08b88ec1ce1c.gif" align="right" />
</a>

```swift
//Your custom configuration
let configuration = URLSessionConfiguration.default

///Add the network logger on the configuration
DebugMenu.sharedManager.addLogger(session: configuration)

//Use it:
//For Alamofire
let sessionManager = Alamofire.SessionManager(configuration: configuration)

//For URLSession
let session = URLSession(configuration: configuration)
```

## Installation

### [CocoaPods](http://cocoapods.org/)
You can use [CocoaPods](http://cocoapods.org/) to install `DebugMenu` by adding it to your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!
pod 'DebugMenu'
```

### Manually

Drag the source files into your project.


## Contact

* Andrey Volodin
* Twitter: [@s1ddok](https://twitter.com/s1ddok)

## License

DebugMenu is released under the [MIT License](http://www.opensource.org/licenses/MIT).
