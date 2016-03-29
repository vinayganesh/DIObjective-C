//
// Created by Michael Seghers on 24/08/14.
//

#import "OCSBoundContextLocatorChain.h"
#import "OCSObjectContext.h"


@implementation OCSBoundContextLocatorChain {
    NSMutableArray *_locators;

}

- (id)init {
    self = [super init];
    if (self) {
        _locators = [NSMutableArray array];
    }
    return self;
}


- (id <OCSObjectContext>)locateBoundContextForObject:(NSObject *)object {
    id<OCSObjectContext> context = nil;
    for(id<OCSBoundContextLocator> locator in _locators) {
        context = [locator locateBoundContextForObject:object];
        if (context) {
            break;
        }
    }
    return context;
}

- (void)addBoundContextLocator:(id <OCSBoundContextLocator>)contextLocator {
    [_locators addObject:contextLocator];
}


@end