//
//  PressMe1ViewController.m
//  PressMe1
//
//  Created by Steven Luis on 10/13/11.
//  Copyright 2011 FIU. All rights reserved.
//

#import "PressMe1ViewController.h"

@implementation PressMe1ViewController
@synthesize buttonPress;

- (void)dealloc
{
    [buttonPress release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setButtonPress:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonPressAction:(id)sender {
    
  
    CGRect newButtonPressLocation = buttonPress.frame;
    newButtonPressLocation.origin.y -= 50;
        
    [UIView animateWithDuration:0.5 animations:^{
        buttonPress.frame = newButtonPressLocation;
    }];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    CGPoint touchLocation = [[touches anyObject] locationInView:self.view];
    
    CGRect newButtonPressLocation = buttonPress.frame;
    
    newButtonPressLocation.origin.y = touchLocation.y;
    newButtonPressLocation.origin.x = touchLocation.x;

    [UIView animateWithDuration:0.5 animations:^{
        buttonPress.frame = newButtonPressLocation;
    }];
    NSLog(@"moved");
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event

{
    
    CGPoint touchLocation = [[touches anyObject] locationInView:self.view];
    
    CGRect newButtonPressLocation = buttonPress.frame;
    
    newButtonPressLocation.origin.y = touchLocation.y;
    newButtonPressLocation.origin.x = touchLocation.x;
    
    [UIView animateWithDuration:0.5 animations:^{
        buttonPress.frame = newButtonPressLocation;
    }];

}


@end
