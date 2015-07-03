//
//  GUYLabeledActivityIndicatorView.h
//  GUYLabeledActivityIndicatorView
//
//  Created by Justin on 7/2/15.
//  Copyright (c) 2015 Justin. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface GUYLabeledActivityIndicatorView : UIView

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;
@property (weak, nonatomic) IBOutlet UILabel *labelView;

@property (nonatomic) IBInspectable NSString *text;
@property (nonatomic) IBInspectable UIColor *textColor;
@property (nonatomic) IBInspectable CGFloat fontSize;

//@property(nonatomic) UIActivityIndicatorViewStyle activityIndicatorViewStyle; // default is UIActivityIndicatorViewStyleWhite

//@property (readwrite, nonatomic, retain) UIColor *color NS_AVAILABLE_IOS(5_0) UI_APPEARANCE_SELECTOR;

- (void)startAnimating;
- (void)stopAnimating;
- (BOOL)isAnimating;

@end
