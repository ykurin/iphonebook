//
//  ContactTableViewController.h
//  iphonebook
//
//  Created by Admin on 31.10.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactTableViewController : UITableViewController

@property NSMutableArray* nameArray;
@property NSMutableArray* phoneArray;

- (void) addName:(NSString*) stringName;
- (void) addPhone:(NSString*) stringPhone;

@end
