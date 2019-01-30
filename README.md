# FortnightUtils

[![CI Status](https://img.shields.io/travis/andreatoso/FortnightUtils.svg?style=flat)](https://travis-ci.org/andreatoso/FortnightUtils)
[![Version](https://img.shields.io/cocoapods/v/FortnightUtils.svg?style=flat)](https://cocoapods.org/pods/FortnightUtils)
[![License](https://img.shields.io/cocoapods/l/FortnightUtils.svg?style=flat)](https://cocoapods.org/pods/FortnightUtils)
[![Platform](https://img.shields.io/cocoapods/p/FortnightUtils.svg?style=flat)](https://cocoapods.org/pods/FortnightUtils)

## Description
FortnightUtils is a small library of utils functions and variables that allow you to quickly build your app programmatically. The aim of this library is to use these components without worrying about creating your own helper files and extensions in order to build out production applications.

## Features.

- [UIColor](#uicolor)
- [UIButton](#uibutton)
- [UILabel](#uilabel)
  - [Characters spacing](#set-characters-spacing)
  - [Line height](#set-line-height)
- [UITextView](#uitextview)
  - [Line height](#uitextview)
- [UIView](#uiview)
  - [Fill superview](#fill-superview)
  - [Center to superview](#center-to-superview)
  - [Center Y axis to superview](#center-y-axis-to-superview)
  - [Center X axis to superview](#center-x-axis-to-superview)
  - [Anchor UIView](#anchor-uiview)
- [UIViewController](#uiviewcontroller)
  - [Add and remove child view controller](#uiviewcontroller)
- [UserDefaults](#userdefaults)
  - [Get app first launch](#userdefaults)
- [Chached ImageView](#chached-imageview)
  - [Initializers](#initializers)
  - [Load image async](#load-image-async)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

This project requires Xcode 10+ running a target of iOS 9.3+ along with Cocoapods.

## Installation

FortnightUtils is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FortnightUtils'
```

## Usage

#### Import

```swift
import FortnightUtils
```

#### UIColor

```swift
let RGBColor = UIColor(r: 255, g: 255, b: 255, a: 1)
let HEXColor = UIColor(hex: "#d73a49", alpha: 1)
```

#### UIButton

```swift
let button = UIButton.systemButton(title: "Title", image: nil, titleColor: .red, font: nil, target: self, selector: #selector(buttonSelector))

```

#### UILabel
##### Set characters spacing
```swift
myLabel.setCharactersSpacing(value: 2.5)
```
##### Set line height
```swift
myLabel.setLineHeight(value: 0.5)
// or
myLabel.setLineHeight(value: 0.5, lineBreakMode: byWordWrapping, alignment: .center)
```
> lineBreakMode and alignment are optional parameters.

#### UITextView
```swift
myTextView.setLineHeight(value: 0.5)
// or
myTextView.setLineHeight(value: 0.5, alignment: .center)
```
> alignment is an optional parameter.

#### UIView
##### Fill superview
```swift
myView.fillSuperView()
```
##### Center to superview
```swift
myView.anchorCenterSuperview()
```
##### Center Y axis to superview
```swift
myView.anchorCenterYToSuperview()
```
##### Center X axis to superview
```swift
myView.anchorCenterXToSuperview()
```
##### Anchor UIView
```swift
// Before
myView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
myView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
myView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
myView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 10).isActive = true

// After
myView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 10, leftConstant: 10, bottomConstant: 10, rightConstant: 10, widthConstant: 0, heightConstant: 0)
```

#### UIViewController
```swift
let childViewController = ChildViewController()

self.add(childViewController) // Add child view controller
childViewController.remove() // Remove child view controller
```

#### UserDefaults
```swift
let isFirstLaunch = UserDefaults.isAppFirstLaunch
UserDefaults.setAppFirstLaunch()
```

#### Chached ImageView
##### Initializers
```swift
let cachedImageView = CachedImageView(cornerRadius: 5, emptyImage: emptyImage)
let cachedImageView = CachedImageView(cornerRadius: 5, tapCallback: callback)
let cachedImageView = CachedImageView(tapCallback: callback)
```
##### Load image async
```swift
cachedImageView.loadImage(urlString: "url", completion: {
    // Completion block
})
```

## Author

Fortnight Studio, development@fortnight.studio

## License

FortnightUtils is available under the MIT license. See the LICENSE file for more info.
