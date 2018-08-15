//
//  PhotoCategory.h
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Photo;

@interface PhotoCategory : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic, readonly) NSArray<Photo*> *photos;

- (instancetype)initWithName:(NSString*)name;

@end
