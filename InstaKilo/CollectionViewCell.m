//
//  CollectionViewCell.m
//  InstaKilo
//
//  Created by NICE on 2018-08-15.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "CollectionViewCell.h"
#import "Photo.h"

@interface CollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageVIew;
@end


@implementation CollectionViewCell

- (void)setPhoto:(Photo *)photo {
    self.photoImageVIew.image = photo.image;
    _photo = photo;
}


@end
