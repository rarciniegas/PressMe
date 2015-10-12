//
//  PressMe1ViewController.h
//  PressMe1
//
//  Created by Steven Luis on 10/13/11.
//  Copyright 2011 FIU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PressMe1ViewController : UIViewController {
    
    UIButton *buttonPress;
    
}
@property (nonatomic, retain) IBOutlet UIButton *buttonPress;

- (IBAction)buttonPressAction:(id)sender;

@end
