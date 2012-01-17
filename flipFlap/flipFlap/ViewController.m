//
//  ViewController.m
//  flipFlap
//
//  Created by Shrutesh on 17/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
       
    
    ContainerView = [[UIView alloc]initWithFrame:CGRectMake(75, 110, 280, 175)];
    ContainerView.backgroundColor = [UIColor redColor];
    [self.view addSubview:ContainerView];
    
    
    flippedView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 280, 175)];
    ContainerView.backgroundColor = [UIColor blueColor];
    //[self.view addSubview:flippedView]; ---> don't add 


    
    myScroll = [[UIScrollView alloc]init]; // Can be anything instead of a scrollview
    myScroll.frame = CGRectMake(0, 0, 277, 175);
    [myScroll setBackgroundColor:[UIColor blackColor]];
    
    TheButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [TheButton  addTarget:self action:@selector(TheMethod) forControlEvents:UIControlEventTouchUpInside]; 
    [TheButton setTitle:@"Done" forState:UIControlStateNormal];
    TheButton.frame  =CGRectMake(5, 135, 96, 31);
    [myScroll addSubview:TheButton]; // Important to add the done button in the other View

    
    infos = [UIButton buttonWithType:UIButtonTypeInfoLight];
    [infos  addTarget:self action:@selector(TheMethodToReFLip) forControlEvents:UIControlEventTouchUpInside]; 
    infos.frame = CGRectMake(250, 14, 17, 17);
    [ContainerView addSubview:infos];
}



-(void)TheMethod{
    
    
    if (isFlipped == YES) {
        isFlipped = NO;    
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:ContainerView cache:YES];
        
        [myScroll removeFromSuperview];
        
        [ContainerView addSubview:flippedView];
        [ContainerView addSubview:infos];
        [UIView commitAnimations];
        
        
    }
    
}


-(void)TheMethodToReFLip {
    
    
    if (isFlipped == NO) {
        isFlipped = YES;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:ContainerView cache:YES];
        
        [ContainerView addSubview:myScroll]; //---> This is why ContainerView is added.
        
        
        [UIView commitAnimations];
        
        
    }
    else if (isFlipped == YES) {
        isFlipped = NO;    
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:ContainerView cache:YES];
        
        [myScroll removeFromSuperview];
        
        [UIView commitAnimations];
        
        
    }
    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
