# SAMLoadingView

Simple loading view for UIKit.

SAMLoadingView is tested on iOS 6 and requires ARC. Released under the [MIT license](LICENSE).

## Example

![Loading View](http://soff.me/QVLy/iOS%20Simulator%20Screen%20shot%20Jul%2025,%202013,%2011.20.38%20PM.png)

Open up the included Xcode project for an example app.

## Usage

``` objc
SAMLoadingView *loadingView = [[SAMLoadingView alloc] initWithFrame:self.view.bounds];
loadingView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
[self.view addSubview:loadingView];
```

See the [header](SAMLoadingView/SAMLoadingView.h) for full documentation.

## Installation

Simply add the files in the `SAMLoadingView.h` and `SAMLoadingView.m` to your project or add `SAMLoadingView` to your Podfile if you're using CocoaPods.
