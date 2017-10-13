//
//  CBImage.h
//  0xcb
//
//  Created by 0xcb on 13/10/2017.
//  Copyright © 2017 0xcb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBImage : UIImage
+ (instancetype)imageNamed:(NSString *)name;
@property (nonatomic, retain, readonly) NSArray *frames;
@end
