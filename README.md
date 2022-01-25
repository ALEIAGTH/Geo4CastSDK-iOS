# Geo4CastSDK POD

## Installing

### Add inside target in podfile

```
pod 'Geo4CastSDK'
```

## Install

```
run 'pod install'
```

## Secret Key

Before using our SDK, you should add a new key in your project's info.plist file.

```
<key>GeoSurveySDKSecretKey</key>
<string>*key_supplied_by_vendor*</string>
```

The value of this key should be received with your onboarding kit from IT4PME or GEO4CAST or ALEIA

## Permissions

In the _info.plist_ file, dont forget to add the relevant permissions for our SDK to work.
_Ommit the unneeded keys and personalize the values with your own message_.

```
<key>NSBluetoothAlwaysUsageDescription</key>
<string>Grant the bluetooth</string>
<key>NSBluetoothPeripheralUsageDescription</key>
<string>$(PRODUCT_NAME) needs your permission to access bluetooth in order to scan nearby bluetooth devices</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>Please grant location access, if not, $(PRODUCT_NAME) will not be able to get your location.</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>Please grant location access, if not, $(PRODUCT_NAME) will not be able to get your location.</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>Please grant location access, if not, $(PRODUCT_NAME) will not be able to get your location.</string>
<key>NSMotionUsageDescription</key>
<string>Please grant motion access, if not, $(PRODUCT_NAME) will not be able to find your mode of transport.</string>
```

## Background Modes

Our SDK runs silently in the background, please enable the following **Background modes**.
In the info.plist file.

```
<key>UIBackgroundModes</key>
<array>
    <string>bluetooth-central</string>
    <string>bluetooth-peripheral</string>
    <string>fetch</string>
    <string>location</string>
    <string>processing</string>
    <string>remote-notification</string>
</array>
```

# Usage

## Initialisation

Make sure your AppDelegate.swift is properly configured with the correct import and
didFinishLaunchingWithOptions has the proper SDK initialization function, as below:

```
import UIKit
import Geo4CastSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     Geo4Cast.shared.configure { (completed) in
        Geo4Cast.shared.enableDebugLogging = true
     }
    return true
}
```

## Start our SDK

After the previous configuration, and for the SDK to start,
The SDK needs to have a relevant userId to start.
Thus it is recommended to call the following just after login with the correct parameter

```
Geo4Cast.shared.startCollection(with: <any_unique_user_id>)
```

## Stop our SDK

At any time you want to stop data collection, just call the below function.
If you wish to resume collecting data, please call the previous function.

```
Geo4Cast.shared.stopCollection()
```

## Get User Surveys

Retreive all User elligible surveys as a json List

```
 Geo4Cast.shared.getUserSurveys { (data, error) in
    print(data,error)
 }
```
