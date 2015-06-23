//
//  Shop.h
//  customCellByCode
//
//  Created by Imanol on 11/10/14.
//  Copyright (c) 2014 ImanolZhang. All rights reserved.
//do nothing but pass data

#import <Foundation/Foundation.h>

@interface Shop : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *descriptionT;
@property (nonatomic, copy) NSString *image;


-(id)initWithDict:(NSDictionary *) dict;
+(id)shopWithDict:(NSDictionary *) dict;

@end
