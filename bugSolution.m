```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *someString;
@end

@implementation MyClass
- (void)someMethod {
    self.someString = nil; // Release any previous string
    self.someString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
    // Optionally, explicitly release self.someString before method returns if no longer needed:
    // self.someString = nil;
}

- (void)dealloc {
    self.someString = nil; //Important for releasing properties
    [super dealloc];
}
@end

//Regarding Delegates:
//Always set your delegate to nil when it's no longer needed to prevent retain cycles and crashes:
// myDelegate = nil;
```

Note:  In ARC projects, explicit `release` calls are often unnecessary, but setting variables to `nil` when appropriate is crucial.  In non-ARC projects, proper balancing of `retain` and `release` is essential to avoid leaks and crashes. The `dealloc` method is especially important for explicitly releasing owned objects.