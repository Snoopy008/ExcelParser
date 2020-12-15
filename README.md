# ExcelParser

[![CI Status](https://img.shields.io/travis/984603904@qq.com/ExcelParser.svg?style=flat)](https://travis-ci.org/984603904@qq.com/ExcelParser)
[![Version](https://img.shields.io/cocoapods/v/ExcelParser.svg?style=flat)](https://cocoapods.org/pods/ExcelParser)
[![License](https://img.shields.io/cocoapods/l/ExcelParser.svg?style=flat)](https://cocoapods.org/pods/ExcelParser)
[![Platform](https://img.shields.io/cocoapods/p/ExcelParser.svg?style=flat)](https://cocoapods.org/pods/ExcelParser)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ExcelParser is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ExcelParser'
```

##使用
```
#import "LAWExcelTool.h"
...
NSString *path = [[NSBundle mainBundle] pathForResource:@"test3" ofType:@"xlsx"];
[LAWExcelTool shareInstance].delegate = self;
[[LAWExcelTool shareInstance] parserExcelWithPath:path];
```
```实现代理
- (void)parser:(LAWExcelTool *)parser success:(id)responseObj
{
    NSLog(@"%@",responseObj);
}
```

## Author

984603904@qq.com

## License

ExcelParser is available under the MIT license. See the LICENSE file for more info.
