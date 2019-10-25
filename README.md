# Peep

[![Build Status](https://travis-ci.org/efremidze/Peep.svg?style=flat)](https://travis-ci.org/efremidze/Peep)
[![Version](https://img.shields.io/cocoapods/v/Peep.svg?style=flat)](http://cocoapods.org/pods/Peep)
[![License](https://img.shields.io/cocoapods/l/Peep.svg?style=flat)](http://cocoapods.org/pods/Peep)
[![Platform](https://img.shields.io/cocoapods/p/Peep.svg?style=flat)](http://cocoapods.org/pods/Peep)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

**Peep** is an easy sound generator library.

```
$ pod try Peep
```

## Requirements

- iOS 10.0+
- Xcode 8.0+
- Swift 5 (Peep 3.x), Swift 4 (Peep 2.x), Swift 3 (Peep 1.x)

## Usage

Playing sounds is super simple.

```swift
import Peep

// play alert tone
Peep.play(sound: AlertTone.tweet)

// play key press
Peep.play(sound: KeyPress.tap)

// play haptic feedback
Peep.play(sound: HapticFeedback.selection)

// play url
Peep.play(sound: Bundle.main.url(forResource: "Success", withExtension: "m4a"))
```

### Haptic Feedback

Add haptic feedback to Peep using [Haptica](https://github.com/efremidze/Haptica).

```swift
Haptic.impact(.light).generate()
```

## Installation

### CocoaPods
To install with [CocoaPods](http://cocoapods.org/), simply add this in your `Podfile`:
```ruby
use_frameworks!
pod "Peep"
```

### Carthage
To install with [Carthage](https://github.com/Carthage/Carthage), simply add this in your `Cartfile`:
```ruby
github "efremidze/Peep"
```

## Communication

- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Credits

* https://github.com/mergesort/FeedbackEffect

## License

Peep is available under the MIT license. See the LICENSE file for more info.
