//
//  ViewController.h
//  flipFlap
//
//  Created by Shrutesh on 17/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    UIView * ContainerView;
    UIView * flippedView;
    UIScrollView * myScroll;

    BOOL isFlipped;
    
    UIButton * TheButton;
    UIButton * infos;
}

@end
