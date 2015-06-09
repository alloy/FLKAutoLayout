//
// Created by Florian on 22.07.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSLayoutConstraint+FLKAutoLayoutDebug.h"
#import "UIView+FLKAutoLayoutDebug.h"


@interface NSLayoutConstraint ()

- (NSString *)asciiArtDescription;

@end


@implementation NSLayoutConstraint (FLKAutoLayoutDebug)

#ifdef DEBUG

- (NSString *)description
{
    NSString *description = super.description;
    NSString *asciiArtDescription = self.asciiArtDescription;
    NSString *firstName = nil, *secondName = nil;
    if ([self.firstItem respondsToSelector:@selector(flk_nameTag)]) {
        firstName = [self.firstItem flk_nameTag];
    }
    if ([self.secondItem respondsToSelector:@selector(flk_nameTag)]) {
        secondName = [self.secondItem flk_nameTag];
    }
    return [description stringByAppendingFormat:@" %@ (%@, %@)", asciiArtDescription, firstName, secondName];
}

#endif

@end