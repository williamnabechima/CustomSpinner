# CustomSpinner

[![CI Status](http://img.shields.io/travis/william/CustomSpinner.svg?style=flat)](https://travis-ci.org/william/CustomSpinner)
[![Version](https://img.shields.io/cocoapods/v/CustomSpinner.svg?style=flat)](http://cocoapods.org/pods/CustomSpinner)
[![License](https://img.shields.io/cocoapods/l/CustomSpinner.svg?style=flat)](http://cocoapods.org/pods/CustomSpinner)
[![Platform](https://img.shields.io/cocoapods/p/CustomSpinner.svg?style=flat)](http://cocoapods.org/pods/CustomSpinner)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

In you AppDelegate add the following code

```
var array: [UIImage] = []
var cont: Int = 0
while let image = UIImage(named: String(format: "spinner%d", cont))  {
array.append(image)
cont += 1
}


CustomSpinner.sharedInstance().setImageArray(array: array)
self.window?.addSubview(CustomSpinner.sharedInstance())
```

To start animating just call
```
CustomSpinner.sharedInstance().startAnimating()
```

To stop animating just call
```
CustomSpinner.sharedInstance().stopAnimating()
```
## Requirements

## Installation

CustomSpinner is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CustomSpinner'
```

## Author

william, william.nabechima@kanamobi.com.br

## License

CustomSpinner is available under the MIT license. See the LICENSE file for more info.
