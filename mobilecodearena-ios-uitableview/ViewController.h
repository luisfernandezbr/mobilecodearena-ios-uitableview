//
//  ViewController.h
//  mobilecodearena-ios-uitableview
//
//  Created by Rodrigo Campos on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain) NSArray *itens;

@end
