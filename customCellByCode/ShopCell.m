//
//  ShopCell.m
//  customCellByCode
//
//  Created by Imanol on 11/10/14.
//  Copyright (c) 2014 ImanolZhang. All rights reserved.
//

#define kCellBorder 10
#define kCellCenterX self.frame.size.width/2
#define kNameFont [UIFont systemFontOfSize:16]
#define kDescriptionFont [UIFont systemFontOfSize:14]
#define kImageWH 70

#import "ShopCell.h"
#import "ShopFrame.h"
#import "Shop.h"

@interface ShopCell (){
    UILabel * _name;
    UILabel * _description;
    UIImageView *_imageView;

}


@end

@implementation ShopCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
        //add compoment to contentView
        _name = [[UILabel alloc]init];
        _name.font = kNameFont;
        _name.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_name];
        
        _description = [[UILabel alloc]init];
        _description.font = kDescriptionFont;
        _description.numberOfLines = 0;
        [self.contentView addSubview:_description];
        
        _imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:_imageView];
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)settingData{
    
    Shop *shop = _shopFrame.shop;
    
    _name.text = shop.name;
    
    _description.text = shop.descriptionT;
    
    _imageView.image = [UIImage imageNamed:shop.image];
    
}


-(void)settingFrame{

    CGFloat nameY = kCellBorder;

    _name.frame = _shopFrame.nameF;
    _name.center = CGPointMake(self.center.x, nameY);
    
    _description.frame = _shopFrame.descriptionF;
    
    _imageView.frame =_shopFrame.imageViewF;
    
    
    
}

-(void)setShopFrame:(ShopFrame *)shopFrame{
    
    _shopFrame = shopFrame;
    
    [self settingData];
    
    [self settingFrame];
    
}

@end
