//
//  Photo.m
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (instancetype)initWithImage:(UIImage *)image {
    if (self = [super init]) {
        _image = image;
    }
    return self;
}

@end
