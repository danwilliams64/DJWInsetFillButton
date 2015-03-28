# DJWInsetFillButton

A UIButton replacement, that has an inset fill when highlighted. Allows for styling of the following:

* Border color
* Border corner radius
* Highlighted state background color
* Font
* The normal control state's title color takes on the view's `tintColor` property.

The class is also designed for use in IB, and is completely IB_Designable, and every property IBInspectable.
This class uses AutoLayout and requires a constraints based layout.

## Demo

![Screenshot](https://raw.githubusercontent.com/danwilliams64/DJWInsetFillButton/master/Images/example.gif)

## Usage

Create a new instance of DJWInsetFillButton, just as you would any other view.

```objective-c
  DJWInsetFillButton *button = [[DJWInsetFillButton alloc] init];
  button.title = @"Hello, world!";
  [self.view addSubView: button];
```
The button's intrinsic content size is updated when the button's title changes, so that it can always resize itself appropriately.

## Installation

Simply add `DJWInsetFillButton` to your Podfile if you're using Cocoapods. Alternatively, add `DJWInsetFillButton.h` and `DJWInsetFillButton.m` to your project. Included in this repository is a demo application, showing the project in action.

## License

DJWInsetFillButton is licensed under the [MIT license](https://raw.githubusercontent.com/danwilliams64/DJWInsetFillButton/master/LICENSE.md).