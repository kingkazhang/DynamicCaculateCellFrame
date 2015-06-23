//
//  IMViewController.m
//  customCellByCode
//
//  Created by Imanol on 11/10/14.
//  Copyright (c) 2014 ImanolZhang. All rights reserved.
//

#import "IMViewController.h"
#import "ShopCell.h"
#import "Shop.h"
#import "ShopFrame.h"

@interface IMViewController (){

    NSMutableArray *_shopS;
}

@end

@implementation IMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *shopPath = [[NSBundle mainBundle] pathForResource:@"shops.plist" ofType:nil];
    NSArray *shopArray = [NSArray arrayWithContentsOfFile:shopPath];
    _shopS = [NSMutableArray array];

    for(NSDictionary *dict in shopArray){
        
        [_shopS addObject:[Shop shopWithDict:dict]];
    }
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //define identifer
    static NSString *identifer = @"shopCell";
    
    //search cache for reuse
    ShopCell *shopCell = [tableView dequeueReusableCellWithIdentifier:identifer];
    
    //if cache without then create newone
    if(shopCell == nil){
        
        shopCell = [[ShopCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    
    //pass data
    
    ShopFrame *shopFrame = [[ShopFrame alloc]init];
    
    shopFrame.shop = _shopS[indexPath.row];
    
    shopCell.shopFrame = shopFrame;
    
    NSLog(@"cellForRowAtIndexPath");
    
    return shopCell;


}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"numberOfRowsInSection %d",_shopS.count);
    return _shopS.count;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    ShopFrame *f = [[ShopFrame alloc]init];
    f.shop = _shopS[indexPath.row];
    
    NSLog(@"heightForRowAtIndexPath--%d",indexPath.row);
    return f.cellHeight;
}



@end
