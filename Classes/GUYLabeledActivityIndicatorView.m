//
//  GUYLabeledActivityIndicatorView.m
//  GUYLabeledActivityIndicatorView
//
//  Created by Justin on 7/2/15.
//  Copyright (c) 2015 Justin. All rights reserved.
//

#import "GUYLabeledActivityIndicatorView.h"

@interface GUYLabeledActivityIndicatorView ()

@end

@implementation GUYLabeledActivityIndicatorView

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)prepareForInterfaceBuilder
{
    [self commonInit];
}

- (void)commonInit {
    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    UIView *view = [[bundle loadNibNamed:@"LabeledActivityView" owner:self options:nil] objectAtIndex:0];
    view.frame = self.bounds;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:view];
    
    // Initialize properties of subviews
    self.labelView.text = self.text;
    self.labelView.textColor = self.textColor;
}

#pragma mark - UILabel

- (void)setText:(NSString *)text
{
    _text = text;
    self.labelView.text = text;
}

- (void)setTextColor:(UIColor *)textColor
{
    _textColor = textColor;
    self.labelView.textColor = textColor;
}

- (void)setFontSize:(CGFloat)fontSize
{
    _fontSize = fontSize;
    self.labelView.font = [UIFont systemFontOfSize:fontSize];
}

#pragma mark - UIActivityIndicator

//- (void)setActivityIndicatorViewStyle:(UIActivityIndicatorViewStyle)activityIndicatorViewStyle
//{
//    _activityIndicatorViewStyle = activityIndicatorViewStyle;
//    self.activityView.activityIndicatorViewStyle = activityIndicatorViewStyle;
//}

- (void)startAnimating
{
    [self.activityView startAnimating];
}

- (void)stopAnimating
{
    [self.activityView stopAnimating];
}

- (BOOL)isAnimating
{
    return [self.activityView isAnimating];
}

@end
