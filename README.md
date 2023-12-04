# vCardSerialization

## What is this fork for?
This forked Version fixes the "SDK does not contain 'libarclite' at the path '/Applications/Xcode-15.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/arc/libarclite_iphoneos.a'; try increasing the minimum deployment target" problem.

The Problem appeared with Xcode 15.

Heres the untouched orignal README:


> This library is no longer maintained.
> In iOS 9.0+ and macOS 10.11+,
> use [`CNContactVCardSerialization`](https://developer.apple.com/documentation/contacts/cncontactvcardserialization) instead.

`vCardSerialization` encodes and decodes between [vCard](http://en.wikipedia.org/wiki/VCard) and [AddressBook](https://developer.apple.com/library/ios/documentation/AddressBook/Reference/AddressBook_iPhoneOS_Framework/_index.html) records, following the API conventions of Foundation's `NSJSONSerialization` class.

## Usage

### Decoding

```objective-c
@import AddressBookUI;

#import "vCardSerialization.h"

NSURL *URL = [[NSBundle mainBundle] URLForResource:@"contact" withExtension:@"vcf"];
NSData *data = [NSData dataWithContentsOfURL:URL];

ABPersonViewController *viewController = [[ABPersonViewController alloc] init];
viewController.displayedPerson = (__bridge ABRecordRef)[[vCardSerialization addressBookRecordsWithVCardData:data error:nil] firstObject];
ABPeoplePickerNavigationController *navigationController = [[ABPeoplePickerNavigationController alloc] initWithRootViewController:viewController];
[self.navigationController presentViewController:navigationController animated:YES completion:nil];
```

### Encoding

```objective-c
NSArray *records = ...;
NSData *data = [vCardSerialization vCardDataWithAddressBookRecords:records error:nil];
```

---

## License

MIT

## Contact

Mattt ([@mattt](https://twitter.com/mattt))
