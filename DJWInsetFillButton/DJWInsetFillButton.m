//
//  DJWInsetFillButton.m
//  DJWInsetFillButton
//
//  Created by Dan Williams on 19/03/2015.
//  Copyright (c) 2015 Dan Williams. All rights reserved.
//

#import "DJWInsetFillButton.h"

static CGFloat DJWInsetFillButtonMarginVertical = 22.0;
static CGFloat DJWInsetFillButtonMarginHorizontal = 36.0;

@interface DJWInsetFillButton()
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation DJWInsetFillButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    [self addSubview:self.titleLabel];
    self.backgroundColor = [UIColor clearColor];
    self.borderColor = [UIColor blackColor];
    self.highlightedTextColor = [UIColor whiteColor];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}

+ (BOOL)requiresConstraintBasedLayout
{
    return YES;
}

- (CGSize)intrinsicContentSize
{
    CGSize size =  CGSizeMake(CGRectGetWidth(self.titleLabel.bounds) + DJWInsetFillButtonMarginHorizontal, CGRectGetHeight(self.titleLabel.bounds) + DJWInsetFillButtonMarginVertical);
    return size;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bezierRect = CGRectInset(rect, 2.0, 2.0);

    if (self.isHighlighted) {
        CGRect fillRect = CGRectInset(bezierRect, 4.0, 4.0);
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:fillRect cornerRadius:(_cornerRadius) ? _cornerRadius : fillRect.size.height / 2.0];
        [self.borderColor setFill];
        [path fill];
    }
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:bezierRect cornerRadius:(_cornerRadius) ? _cornerRadius : bezierRect.size.height / 2.0];
    [self.borderColor setStroke];
    path.lineWidth = 2.0;
    [path stroke];
}

#pragma mark - Setters

- (void)setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = _title;
    [self.titleLabel sizeToFit];
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)tintColorDidChange
{
    [super tintColorDidChange];
    self.titleLabel.textColor = self.tintColor;
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    [self setNeedsDisplay];
    self.titleLabel.textColor = highlighted ? self.highlightedTextColor : self.tintColor;
}

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    [self setNeedsDisplay];
}

- (void)setFont:(UIFont *)font
{
    _font = font;
    self.titleLabel.font = _font;
    [self.titleLabel sizeToFit];
    [self invalidateIntrinsicContentSize];
    [self setNeedsLayout];
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    [self setNeedsDisplay];
}

#pragma mark - Getters

- (UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _titleLabel.font = [UIFont boldSystemFontOfSize:_titleLabel.font.pointSize];
        _titleLabel.textColor = self.tintColor;
    }
    return _titleLabel;
}

@end
