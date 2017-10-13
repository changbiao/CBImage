//
//  CBImage.m
//  0xcb
//
//  Created by 0xcb on 13/10/2017.
//  Copyright © 2017 0xcb. All rights reserved.
//

#import "CBImage.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <ImageIO/ImageIO.h>

@implementation CBImage
+ (instancetype)imageNamed:(NSString *)name
{
    NSString *gifName = name;
    if (gifName && [gifName isKindOfClass:[NSString class]] && [gifName hasSuffix:@"gif"]) {
        gifName = [gifName substringToIndex:gifName.length-@".gif".length];
    }
    if (gifName==nil && gifName.length<1) {
        return nil;
    }
    NSString *gifPath = [[NSBundle mainBundle] pathForResource:gifName ofType:@"gif"];
    if (gifPath==nil) {
        return nil;
    }
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:0xcb];
    CGImageSourceRef gifSourceRef = CGImageSourceCreateWithURL((__bridge CFURLRef)[NSURL fileURLWithPath:gifPath], NULL);
    NSInteger cnt = CGImageSourceGetCount(gifSourceRef);
    CBImage *image = nil;
    for(NSInteger i = 0; i < cnt; i++){
        CGImageRef imageRef = CGImageSourceCreateImageAtIndex(gifSourceRef, i, NULL);
        if (i == 0) {
            image = [[[self class] alloc] initWithCGImage:imageRef];
        }
        [images addObject:[UIImage imageWithCGImage:imageRef]];
        CGImageRelease(imageRef);
    }
    image->_frames = images;
    return image;
}


@end
