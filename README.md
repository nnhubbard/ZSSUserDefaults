ZSSUserDefaults
=============

`ZSSUserDefaults` is a replacement for `NSUserDefaults` when needing to save defaults for multiple users. Defaults are saved by writing a .plist file for each user.

I created this when needing to save non-private defaults for multiple users in my app.

How It Works
---

```objective-c
ZSSUserDefaults *defaults = [ZSSUserDefaults standardUserDefaults];
[defaults setUser:@"my_username"];
```

Register defaults:
```objective-c
[defaults registerDefaults:@{@"option1": @(YES)}];
```

Save changes when you are finished setting defaults. Normally in the `viewWillDisappear:` method:
```objective-c
- (void)viewWillDisappear:(BOOL)animated {
   [super viewWillDisappear:animated];

   [[ZSSUserDefaults standardUserDefaults] synchronizeChanges];

}
```

Contact
--------------
Visit us online at [http://www.zedsaid.com](http://www.zedsaid.com) or [@zedsaid](https://twitter.com/zedsaid).
