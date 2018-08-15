//
//  Photo.h
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property (nonatomic) UIImage *image;

- (instancetype)initWithImage:(UIImage*)image;


@end
