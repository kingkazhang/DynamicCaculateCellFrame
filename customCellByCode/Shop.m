//
//  Shop.m
//  customCellByCode
//
//  Created by Imanol on 11/10/14.
//  Copyright (c) 2014 ImanolZhang. All rights reserved.
//

#import "Shop.h"

@implementation Shop

-(id)initWithDict:(NSDictionary *)dict{

    _name = dict[@"name"];
    _descriptionT = dict[@"desc"];
    _image = dict[@"icon"];
    
    return self;
}

+(id)shopWithDict:(NSDictionary *)dict{

    return [[self alloc]initWithDict:dict];
}
@end
